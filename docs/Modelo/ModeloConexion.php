<?php


require_once('Modelo/Connection.php');

/**
 * Performs CRUD operations.
 */
class Model
{
  private mysqli $conn;
  private string $table;
  private array  $list     = array();

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
   *                            Example: "id=? AND units>?"
   * @param mixed   ...$values  Values to use during the prepare. 
   *                            One parameter per '?' present in the statement.
   * 
   * @return mixed Array of the rows retrieved from the query.
   */
  public function select(string $statement, ...$values)
  {
    $this->list = array();

    $sql = "SELECT * FROM " . $this->table . " WHERE " . $statement;
    $statement  = $this->conn->prepare($sql);
    $statement->execute($values);

    $i = 0;
    $result = $statement->get_result();
    while ($row = $result->fetch_array(MYSQLI_ASSOC))
      $this->list[$i++] = $row;

    return $this->list;
  }

  /**
   * Inserts a new value into the database. 
   * The id property of the object if present must be null.
   * 
   * @param mixed $obj  Object to insert into the database.
   * 
   * @return bool Returns whether or not the object was 
   *              successfully inserted into the database.
   */
  public function insert($obj)
  {
    $data = get_object_vars($obj);
    if ($data['id']) $data['id'] = null;;

    $fields       = "(";
    $placeholder  = "(";
    $values       = array();
    $i            = 0;

    // INSERT INTO table (field1, field2, ...) VALUES (?, ?, ...);
    foreach ($data as $key => $value) {
      $fields .= $key . ",";
      $placeholder .= "?,";

      if (gettype($value) == "object")
        $values[$i++] = get_object_vars($value)["id"];
      else
        $values[$i++] = $value;
    }

    $fields       = substr_replace($fields, ")", strlen($fields) - 1);
    $placeholder  = substr_replace($placeholder, ")", strlen($placeholder) - 1);

    $sql = "INSERT INTO " . $this->table . " " . $fields . " VALUES " . $placeholder;
    $statement  = $this->conn->prepare($sql);

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
