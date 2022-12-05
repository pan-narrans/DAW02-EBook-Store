<?php


require_once('Modelo/Conexion.php');

/**
 * Performs CRUD operations.
 */
class Modelo
{
  private mysqli $conn;
  private string $table;

  /**
   * Creates a new Model object linked to the specified table.
   * The model automatically connects to the database specified
   * by the connection constants.
   * 
   * @param string  $table  Table to perform CRUD actions against.
   * 
   * @return bool Returns whether the connection succeeded or not.
   */
  public function __construct(string $table)
  {
    $this->table  = $table;
    $this->conn   =  Conexion::conectar();;

    // Check for errors in connection.
    return $this->conn->connect_errno ? false : true;
  }

  /**
   * Performs a SELECT operation against the database.
   * 
   * @param string  $statement  Prepared SQL statement of the query.
   *                            Example: " id=? AND units>? "
   * @param array   $values     Array of values to use during the prepare. 
   *                            One value per '?' present in the statement.
   * 
   * @return array Associative array of the rows retrieved from the query.
   */
  public function select(string $statement, $values)
  {
    $sql = "SELECT * FROM " . $this->table . " WHERE " . $statement;
    $statement = $this->conn->prepare($sql);
    $statement->execute($values);

    $result = $statement->get_result()->fetch_all(MYSQLI_ASSOC);
    return $result;
  }

  /**
   * Inserts a new row into the database. All the object
   * properties will be inserted into the database.
   * 
   * @param mixed $obj  Object to insert into the database.
   * 
   * @return bool Returns whether or not the object was 
   *              successfully inserted into the database.
   */
  public function insert($obj)
  {
    $sql = "INSERT INTO " . $this->table . " ";
    $fields = "(";
    $statement = "(";
    $values = array();

    foreach ($obj as $key => $value) :
      $fields .= $key . ',';
      $statement .= "?,";
      array_push($values, $value);
    endforeach;

    $sql .= preg_replace('/.$/', ')', $fields) . " VALUES " . preg_replace('/.$/', ')', $statement);
    $statement = $this->conn->prepare($sql);

    return $statement->execute($values);
  }

  /**
   * Updates an entry from the database based on the id. 
   * The id property of the object must be set.
   * 
   * @param mixed $obj  Object to update into the database.
   * 
   * @return bool Returns whether or not the entry was 
   *              successfully updated the database.
   */
  public function update($obj)
  {
    $data = get_object_vars($obj);
    if (!$data['id']) return false;

    $setFields  = "";
    $values     = array();
    $i          = 0;

    // UPDATE table SET field1 = ?, field2 = ?, ... WHERE id = ?;
    foreach ($data as $key => $value) {
      $setFields  .= $key . "=?,";

      if (gettype($value) == "object")
        $values[$i++] = get_object_vars($value)["id"];
      else
        $values[$i++] = $value;
    }

    $setFields  = substr_replace($setFields, "", strlen($setFields) - 1);
    $values[$i++] = $data['id'];

    $sql = "UPDATE " . $this->table . " SET " . $setFields . " WHERE id = ?";
    $statement  = $this->conn->prepare($sql);

    return $statement->execute($values);
  }

  /**
   * Deletes an entry from the database based on the id. 
   * The id property of the object must be set.
   * 
   * @param mixed $obj  Object to delete from the database.
   * 
   * @return bool Returns whether or not the entry was 
   *              successfully deleted from the database.
   */
  public function delete($obj)
  {
    $data = get_object_vars($obj);
    if (!$data['id']) return false;

    $sql = 'DELETE FROM ' . $this->table . ' WHERE id = ?';
    $statement = $this->conn->prepare($sql);

    return $statement->execute(array($data['id']));
  }

  /**
   * Closes the connection to the database.
   */
  public function close()
  {
    return $this->conn->close();
  }
}
