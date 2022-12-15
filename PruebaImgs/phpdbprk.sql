-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2022 a las 13:04:24
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phpdbprk`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `nombre` varchar(20) NOT NULL,
  `imgs` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`nombre`, `imgs`) VALUES
('carta', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708161615181615161819181a1d211e1c1c1a1c1f1e1c1f1e231c1c1c1e1c211a1e212e251c212b241c1c2638262b2f313535351e243b403b343f2e343531010c0c0c100f101e12121e342b242b3434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434ffc000110800b9011103012200021101031101ffc4001b00000203010101000000000000000000000203010405000607ffc4003f1000020102030505070302050402030000010211002103123104415161f00522718191133242a1b1c1d10652e16272142382b2f1334373c245a2152434ffc400190100030101010000000000000000000000000102030405ffc40023110101010100020202020301000000000000010211033112210441516113427132ffda000c03010002110311003f00b6ac789f5a6063c4fad290d39457956ba512dc4fa9a3c1769173eb51baa70b5a9b445b676e27d7a8aaef886753eb561aaaa096a529af60b903de6f5a966332188f0623ef5212a196a7aa126237ee3e74d0edbc9f53494a70a5d319c46fdc7d4fcea55dbf71f5a10b57363d9e7bc74e1c4fe2ab18bad7216b5f19dab3b1a30ef1267709ddc6ae2bb713eb55f131a0ace84905b70b5a7c749d2988e0890410778208f515ea63333391cd756de9edde10d3eb7f5aa38fb2b8bab311e2647e6ae4d72b54793c39dfbf6aceae5921dbf71f534b7662c049f5ad7c4c256e4788fbd679d9594926e22c4570793c3bc7fc6f9dcd141d8df335f9fda8416e27d4d3ca5a93e5cfe5594ab395dbf71f5ea293b4a31b8267c4d310d31d69f6913b363311727d4fd26a5dd84dcc789a56583473c7f9f2a025dc9173eb354f1367d4dfd4fe6ad03b8d430e71c8fe2894281c3658218fcc53bfc4b812099e64d39bc3aeb7d085ebad68e817f8d62b0e7ea3ef54176a6568931a482489dd20dc55c035ebebf8a43a4c9b5b8d3949670c961ef30e527f37ebccb331b163ea7d20d5324bdc9b682f03e540b3a127949ff9a70961d986f3cae79529dd86f3a713cb7d77b52041bf8d43ed2a7de53a7da9c08f6cdc5baf3aeaeff169fbc75e55d47031d45340a5e1d3505554248a3c017a12d478553443314efa56ceb79a3c66a3d9d37d2fd2a2dae9406a70cc18dd45882a54841bb5a6a75d7850a2d3b0f0c930224fda892dbc85de7d9bb361663c86bf8abcef00058936504c026098983b813e552881440d06f3f53497372988bdd66014eed0ead3dd320f8488249af4fc3e298cff006e7debe553fe21917fcc13b8bafbb04eac0fbb0353a5bca9ac8cb0520ac4649816982ac058cdb87a57621640201703deb4bc5e4802031d04789bd2c05707d9b05332606fb1860402240e46f5ba1615c4e59ef6f1bf7693a8b8bd4262b66cacb1fb48321b49e60df43c294c430031142de0026d98d8656d66fad8d14fb343abe5b28025a200cb6d6f378d35a93590435c5f983c0c1f9c8a25355766c3408321ee4c80a6c20dd41dc24191c669cd88018f3e406f24e8051c313e0ab72f0fc551c5d94adf51cbee2afcd0b3d73eff001f3af5f55a67c963300a31f4b576d98e442ef3f21c68b0cc8e1ff115c7e4f0eb1f7ee35cea68a75bf5ff003536f3ea28d97afe6809ead58a83f4faeffa54328d35f9519a8f9f5ff3d68c12fd7533428bcadd1a3636f2a8cb027a8eb753010a3798149605cf04e077d3d8f5d7d2832f3f2a0ab8881616f5f2a595d7ab785131a827af9d380bc54ebf9a4be1f0ab31c3f342d4e12afb3f1f95755893c0d751d0c75a62d2569c86aea04d4781af8d083528d066a69a5cdeade12daab209606ae91534e20ea0d390c8bfca94a298a692928b78f4ad5c0c3ca399d7f149d9b023bc75ddc871f1a63b824a662ac56646a0680cf8eee46bbbc1e1f8cf95f6c37befd44ed08acb95f4240f39b7899dd5c0bace7865075896224416516006f8f1b50a12d29888375e7bac492046f532263748d69a1590774165ef1227bd73369b11ba35d2bb190364400f71c14d0ace6c840b0520d87f4f3e5146ac1e7de56d0ee700131e5791a8bd2d18390c8f169c96882c33ca8b93a899b1a9c674321fb844e56260c7ee47fa8e571113262562004c45cc0c2e60254ee1981b8274de2fad3632ad8318161a93ca49bf99a8c1c3619b3366936b010204081e77a1c121a1918e512b9775ad1fd2418fa5009c255721d203806dde804802594804e966806278d5844660531141b448f7181dd132a795c697378a78ee0bafb5cc904e42a7bb62904e24662493ee8b7116ab58f8ae801c9985b3659cdac4aafc5e120ebae9419285b2e7c139c1eec3b122ddd055e640b49d67511ad1be3b2a82e1640ef159cb33a293733a7a931bc49c32c7e079120108e6f02429ef03038d88accdbf1999cc1674b580b822c4a803bc396ba9be945fa1274680bb166b93d7a568e024556d992c08820c10469157d054715d73a037df55d908d6aea8a96406c7f9ae6f27e34bf795e7c9cf6cd6a823afe6ade26ca45d4cfd6aab8b571eb3acde6a36965f45b8d6b8af8d4b7dfab543713d7f14816cdcfae46844cd101d4c503083d7a5102587d694d4d61497ebf3269c2486e5d7daa1852d2dd753e34d634cb81cedc3e5fcd45440ea3f15d4063a6b4c5f0a503be982aea0c8e15136a0798b5311a45233b67ab59a6a9e1b7c235ab4cd022a2aa0c319b49ab7b1e0cf788b0f99fc557c0c393c38f5c6b48587dababf1fc5f2bf2acfc9be7d43692006ca8fefc161943083104abeeb301aefa01dfcae8e646e9390dbdd751bc03e2091ac451a6d2198232b239048988b1be56f8f49d2c2e62bb9809db2237b497502e42c92b132546a75d35b6fa2d9a6cc8d28ddecad7613a90d279774e97bd16760da4a9368f796c351bc4cdc5c48b5726ce3397420136788cad1363c0824dc7399aa372657725410e963220c36e23e2524033c458eb4cc7c40243af70c0cdaadc5f30d544efb8b8a0c3c605a1d42b0685933208b156883306c385e96fb5148ce43076b38232c117246e00f0911bea41ceae24a10c0df2b1889fdaf7b723ea287286ef7790922d2033283a100f38e2289f0482854c05b64f872e8488df1a4c8b79d033ab9c8cac185c4d8dc11991819302648d268096630c3100812640254af86a08de3d285c342b6190544f766cf63033de38e9458aeeb960661a371dd0d6d77c8e6292ac8559d49430734407526e654c857d3770a0cadbf6b2815580ccd6561eec99989399785ed3bea9602322e85c0f22abce012f024d84fd6804b96f6b0ca620b004104d811a020c72d0d682e1ba9312c0eaa6011689536e4609e304694bd9fa1ecd81940f66c321b853de53264b079cc27cc4c98bd58c1da24e565c8d78526730fdcad003795c5a62693b3e02ae7186f0dbe58bc36e6652664c11a890390a6b6d0040c55cb064182c9200bab6a0f7a00201b36a2f4f84b49ce982918b9e54a5d44e641199a45a18dadac5a78eea2c0c70c091200b7794a89e59809d409169e3470231b69c8c330843abc8caac4c0046a01fdc6da53b130436baef8d7cf8f9d4f1916de0dc78555c3c07463ecc28c389c9a92dfd1a04dda920f01ad4eb19d4e5872d9e8bc7d95873f0fc6eaadbbae75aad8a3365208e04e8d62c40df602e4802e0493518bb306e4788fbf1ae3dfe2df796b9f2ff2c664a4c7474abdb46ccc864e9b88fc1aa996b96cb9bcad65941e540e3c28cd035f59a0a926dd7d6895bedba85d7a8bf98a8f4f9d306e61d7fcd452afcbe5534760640a6a2f5f6a5a8a6a9dd56cd2c6d5c8770d7adfba81f134a6e0a0f5ea29538b0a32881aef3d6ea34126842cc08e423e55bdb0767285ef8049d780e5fcd578bc7777fa1ad7c628e11007deac2bd2f6ed821b228255811de163616077d89d6348ac8d9fb4b218625c5cdaec012225b42227d45ebd2926671cff007a6bba0769462aebbe2573410030f888d637558c225843a952b96f22e63711e9ba662b1f0bb4767560c251a6f330d3ac804e623770ad04ed1c272519960e9360458de60a99fb5e9cb29dc5cfb8b273a3335dd4fc2355e417469b5f5d68c61ab8cf864063de913958e5232b0dfaeba8d6968ae9ee43a09b4f7c5e4c19868bd8c1d04d58421d58a3c163aeb045882a7436b8d6f544ec4c452d91d6c74cc3badc81e23818352ab9142a8665048e242c18001f78088e37a83de0531154030a066956244900102222a5d1c31604b8d3259635321b42660436e3af1012aaa40f62e14cce4d15a04e52bef20b8272c73146eca547b48b9892a5466260017eec92003373e34dc260f0e148317910c409b19bc024f03ad2b17132ab9c5cb900bb45a093665bc40893a19dd407622ba850bde837cc7bc470cc46e9f90bd666d3b687213dd61198122731d009f7b91d0906ae6dc4a0cc8e4130a14f792044c6f5b6f078567ec7879d8ca10e86dc729f8adb8c1117d2f534e1bb0e1329cad2eb166373cc3c9beba8b5b41577012153d9c65d72b66ba9e0cc7b91adc41d2d334bcf9109c4bc4dd54991137551dd3a8d62c0da62ad3872064ca660dc90489040163a891274fa1c08555727292aea04da1d26f041f787232b44a1c771c1752633ca830491df5b6822ea20ce822a73a3c875c850d839cad1fb95c1dffd24f3e1458b88c84021f114ef092ca379240018728cdfddb808656b361b8215b2942404b10ac2409565bc0d262da10c4c40ca0e22e4398598830daac368de5be452d570f119ca377d615990952382b1886dfa831c8d318b053ed067049072ad82c1b959922358937e14f81d881d09225c123ba6ccbba10e91a1868df2d4fc363009054ef59048e522c7ca836454083d9c64375ca64472fda390803853629074d577c270146110209243490d3320b6ba999b9d45a643eb2bf51f699c0c295be239c883fa8ef8e43e6454eb5f1968ccede19b6e2666d6cba7dcd500627ed440b6550d19a066034cd178e026944c72eb85793ad5d6adaeb9393887a1e5d78cefa23d7fc54b0e0681c25c5e93ce9cf49634c9d6e7ea3f15153945450199874ddda529051d5d66e8df4fd985576ad6ecdd9be261e03ef4f18babc8575333abdd9fb2e5efb6a741c3f9ad21882ea180620c71e19a391aab9cf8d253115cc7bae24468c22012a778048b8913e15e96313139185d5d5e97db1da19366c60edfe6223119220d82a9e22ee0de0d8c13135e2bb136e6f639172ab06ca18efb489e247dabd776de2b0408d94e7632408955d011bf517af35b3a7b34089101998e6f95f747744d57e84584c47064a1633a849f9c4f0a2da13daae57cc175804ac9e720cd2886dd9c016857205b3445f801ebcaa5f1d89f7dd4e9de9208ef6ed0ef3e426949c577a4ec7b13616217421af2334dbc85a7c6b4d3b4b69ce1ca6188de0431910493be40155971ad25a44ea0da370befa7a62afeeb787de9d9d3ceb97d3d26cdb58289ed5332b12acf628bfde4fbb3313a6ba55d380e99424bae855cd9446a1e27caf3cabcdecdb614042b900ee0d69f0a34ed06510af037004d3e26dfb7a0c4c2cc033064603de900acc4ace86e0483636aaaeac1bfcc5565175600774ef2ca779e22dc8563bede597bca09d735e771e3f234bc6ed064857c49cc40871cc0275161a934ade7d1c9d371764cee5d094d202d94080092a2c49035dd57f0143ae475218005965810648957113706194d63a6d4ed888b902b21246b94da2f3baf363a815b69b5a95efa3f92cac78ceba7ca9761f2ace061bae5595651bc8cac0016002d98ee161cea30b0a543e0b40927212550b6f52233234cc8d24c953ad56c2db910a80ecca5e08756cca328025e6201bdc696a7edfb4e1d9c21775398327bc08b45812c62d04114fa56559da592551d0904c0668c80d859a64312401a1274a35d9ca162a58cc9caec4f7b9319206a2f3bb70ac8d8ff00512b42e361ba169041468998862c02dc41b73e1357f64dab6783ecb110679b116cfb949e2ba649913e147a2e539591d8660c8f16049468b8b1530e2fb89891a4d065c4440142e205d3316ce46e9249cc79c89b081ad46d4518018c8c04c402ec8c48d3b83bc64400c01e1ad3b1c62065c90540860ed00dc6f82d98098dc77d331e02a49755019800c72e56b4b41040332c4df8d3a69183b467b15656024ab8823d0c3099122458de9c054843578f57ff0013b4363ffdbc394c21c483de71d70e15abfaa36c608bb3e19ff331e567f6a7c6fcad6f5aaf8382a88a883baa207f3cf7d70fe5793fd636f0e7f6377e3c294c7afe698c7991e1d6b4aeb8d7246e29bf3ae7f1ebed50050e20de3ae74d20607af0a53efe74d34a7dff006a21152bc7e63f15d4793c7e7f9aea619ca68f3c52c6fa7616197303c49e02b499babc8cade1fb060e73247746bcf956da8155b054280008029871973043ab026390d49e5babd0f1f8e6671cfad7ca8dc38605492260a586b033031bae72937a8c064c552590a9072b2b4661948304a9bac81e34a557c30028cc9239ba83398c01dfdc78dceb56f0b2b10ea41b448de2f63bec49b56a4f2fdbbb438c6542d9b22004c5ce7398d85811dd1e0052f1701b4081a045f8c8b785a4f80a3dad33e2679139cc9e2a0dbd205594b6f9a992fedaeee6f3e2a69b2883232c9d26f00983ca8861300618c7300efe3bed6abeac37dcd48bdad54cfacef664f74a02a64db8f9ef334845205c651a46bb87cb77956abe0472fa557c6c33ba83eab2b8a726208355b1908bd023c9163ad3e9ae6d1b40552f13a409d49200aa1b46daee7310a085ca009e64f86a3d29ecd021aea7746ffb6b42764406ed1ca447083c0d47ca7571afb3edcae0b0950a2e0c7778191c81a5f68f6923655472504b34022482a5412469a9aadb3e02e5749233ea75e103d24799a5bec4eba4104ea0c1f4a248738d428842b882cc3bce189962b0e6c60496ddc68768c4547b0cccd3398d81b3102dc20729aa7d9fb294625b7e5883bc1249831b80ab9b2e1306965930e4c85337110675b5ae6e2b3d7be2356fa8d0d9b143e60508b0905c90577f8f811c285766656072e656857b88c9f0334fc4a4913bc31e0217848aa5400d19092493c234922e63483e357760c60710203752a186f83713c647de9e6760ce9a787b4b89f6b86ca018cc002a6f624062cb703591717b1ab6d44d415a87134388eaa0b3185504b13a000493440579dfd4d8a71597645261c67c623e1407bab3b8b11e82b3f26a6736d3ce7e578cfeccc66c5c47da9c11ed3bb86a755c35d0789d4d68107afe4de836900006000b1e405a38da8dfd66bc9d6aeaf6bae4e4037875e14111d5c796fa3faf5e942cb171bb8191e1334a0413c7cf8fe4542371dfca84f5f9f1a16307afa5327620831b8fe681a9c4e6155f35ee7af1a212730e0bebfc575440e3f33515438cec25248037d6becf821447a9e2695b1e065127de3f2e5567301a90375cefaf47c3e2f8cedf6e3debbf50e1ca831321856304dd4e8c34120ee37a5b2b2b67bb2e8564cadc49037f12395a9eaaae1581e6acb63e47e507ed5bb376233ae4b1603df2a066b03f09dc48dd7dc0527b4715170df184664466e1de8852cbaccc44de98b88c93ed0e65dce0401c9940ee888ef5c6b314bed1c0c3c552ad0d9a518a99b08378d48214df4f3a14f21d95da39d05fbc2cdc2771f3fcd076976a9c12a32869b917075817f5af4fd91d8489870400ece492380b2db9813feaaf25dbfb367c76cb755b02380b4facd67e4d7c63a7f1bc5fe4b670ed9ff52218cd9d7e62b5766ed2c37f73104f3b1f9d7907ecf2bbe2a06c8dba3caa2796ba75f891f42c2c46de2d47980d45780d99f1108caee84f3b57bbec1c3c47c047c4398b499223bb30073d27ceb5c6fe4e6f3783fc73bd1bec808d2b1f69d95918120e5dfcb9d7adc1d962ac61e1888b1f9fd6adcfd797d9b65ccaceda22179b8b83dd3ffd6abecfb1c300086d2e77921989e77af73fe1d0ab061665ca4e9683e9a9a460f64e183218c7cf458320c1f77e7586b3aeae6a32765d8c157951dd933cec05ff00d2691b56c8f87dcdd04b309f88c2ac9d2009f3af5387b222ae5045e01f224fdfe548db7b399dcb020a1ca72cf0d6dd6b4acbc12b0366d9648cce753722e009802d7f86fcaaebecd0cca180dc6d69e47e1bf42ae0ec973944c00260f1b037f3342f848499421a4c913eb578979f65a6633c1cae0ab700041e6a63ef59bd941d7b4949d1c589be6555fa82be5e75b9b4ecd2b958ca9d388e639d4767eca8aeb88d88214900b40ef1056c675dd179abfa8237cb5406a891d7d3c6ba902b6edad7091f11fdd4524f13c00e64c01e35e73b2f09e1b13107f9b8cd9df8afec41c02881147db58dedf1d7005f0f0487c4e0d897c89e43bc7c7953d8f39f1af3ff002bc9f2bf19fa74f8b3c9daec45ddbbaf2e34ad98f7237a9ca7ed3cbc698c77743afc52b0e431e047535cad02cd7fb7f1bea5813adbebd78573b907a3e5519bc07d3f9a6004f2ebadd42c7afe3a8344e296791ebc69a448f142e26e3f3500dedd795086df1470027c7d7f8aea666ea4fe2a29975616851d5e518722a6c7c47116b11c297b43b000ac4020b71cbbe26d35019714775997236b10c0c5bde12019f31c8d7b4e03d310a42e562ab0b9eda9204c4fba01bb6e8a6b60df321cad73bca99007796780d45eaa0da19180c4290c0c1168d043709e3a4daace2a49cca4ab4403b8806608d08d7c24c520760b390730599d04c44c19275e31545f6855c5384000aaaa1791f788f423d2ae0da402035a620ee24ee078db4e62b230b08b62e7370c4bfd80fa7a52bdfae35c7c797bfc367da0442cdbb78df2600bda648ac265d89cc32b298b106fc7713f4a9fd41b5326181fba4f90851f369ff4d611da99829798d05811a11bafc4f972aaf84bec637acffe6f1b9ffe1f04fb9b447278fbc5763761bc0cb91872267c4ff158c9b50b4841a5812a47f37a6ecb8d9dd510ba9260dee2485b117d493e5537c396d3f2bc93ddeafe276636851a5a154805812c601102c3c7857b0184a8aaaa000a02a81c008155366c68d2e26aee6913334671328f379af939d087a6a91c870fbd21852b1c02208d6c7983a8aaeb13f1714653ddcca57406ed3361c88dfcc52f0b694cd39883b8191be0800e83ba22375572da2072a0441df02e6e741ce94f9b8a1222099f326fccd1c38d0ff1e8c255a6c0eed0891e028d7146a2e7d62b27399cb908f74122204a93262c40b2d1a3228209ca08bc1200985103e12662dc4f1a0358e3b6a0cf1126886382208acc4c5008ca647013a0b7da2791a73e25c9045b5f49f23be8e01630beb6aa7d8785999d1d4911241d266c4f1066ad97045a68f6152331b4d8796b53a9f71a66f3362fa612a801554059ca0080b3ac70aa9dadda3ec7099e25bdd45fdce6cabeb73c81ab01ebcfed18dedb1cbeb87824aa706c4d1df9e5f7479d61e6f27c33d3c67e543b06cbecd02932ec4b3b1f89daec7d6c390ab326b9da822bcbef5d6963c452e48223d3ee3f345ada849f1eb8d32762defad04f919a6169e755d85baf9d10a889b7d7ad35a061d0eaf501bafe2a4f5e9f4a70a809bd73756a173f3ebcaa3375d6b4c0727235d4ccfd66aea020164249ef212493bd6649247c43416d00d29f8051bbeb37d7513bbbcbc74d44e9496c6cad7b291ef6ecd3a13f088d28d70d1caba9beb997e21699fdc081af215edbcf71733971402ac601f800b403be493106d4fc3d902b664b4882a7800600fdb78e54b18b998a32e5916923bdbfbbc620cef1c28dd5e4b234c904ab7868ad0624f42a42a76af68a2613e75ca732aaab6a4923be23701241e5baa51a348b69cc566feb5c7fff005d3552ce0c117ee8323d581f2abbb0a2aa229370a01bda624d3573e9671f0931233824c4033ba797e2b3f13b051a723152397e229edb7a2989cdcc6956f071838959f123a9a268ee6e7eec649ec572080cadc8ff002267cea3b23b29f0f13338369336898200d4fee9ff004d6f1c23aade831714e8478d3f911c1f853f0b1eb35b137cfaefa9f6935217df68bd89a40da41b4f9d577b88a1ce74d7c6983b68c61241020adcc5af3ddf9493e14582144c1dfc4ea486363c6691825c1330413e80c01f7a60f858a1044dc09201198e9ac9b78d33370918492c0b1e222604098b5ec6c3773a76479b2dbc75b9171b801067898a05c51a131169d2f9b2817de4da9e1ae04ebcfe914009491de026d33cb4bf2bd217020c862049244c82499320833575b291620eeb71fe296c845c6b4833fb6f119767c43a180011b89617e5567f4eed4d8d805ca9ccad9188b8242a9cc384e616dc66ac9c6194aba48604303be41911bc55cfd31b1ae0e0b28272976619b502145cf20bad4db38a8a1da5b5b2a054ff00a98872a7f4da5dfc156fe3978d57c1c154454410aa001cf5b933a9bfad03630c576c71195bbb863820bcf8b996f0ca375193d75ad797e7dfcb5fd475633c8926827aeb5ae27ad2867add582c60f5d7950163d75c6bb10da4183cfd3ab5246275d5a990d9b954136dc7af95748ddf4ea2866980f1ebfe6a7e7d7ad43ebd7852c9f2a084f4a9b519334b1d4f95324e6e47d0d752e79fc857531f466c988632bfbd79062089ddc56f11adc4d494749f66032eb95be1e49c67f6e9cc694cc4c20c20f911a83c41dc681b15d05c0713ef090545ccb2807369ba35d37d7b4f3d6b0d95c1104e5317117d246f1beb957d9a80149402e45d819bb3711bc91c0d00c04660eb01b5ceb1264017dcd68b19a7ae310d958408b36e3c47f49d35d691b13f537650da50361b038a9a6561753f09e07789e75e3b1f65dab0a73a622a8de012bf29afa6ba59b21cac4c9b482d035078803eb5298b6ef02a6c0837127483a3026a6e7aaceacf4f97e1768e229bdf937deb44fea9c4cb0aa15b49991e42bd8f69f65e1e21ce515984ca9919a63783dd6b58d797ed0fd35ef36106ca0fbaf19ada9106fd44d293e3e9a5d7cbdb3764ed077797c429372c499f96faf5d83daf84a81439c43c59a4f99dde55e09b67727222b3b70024fa0ad7d8ff0048ed388a182aa83705980f909345b689f197ede8b0b1dd8c2348e1b87e2aded1b4261ae67611cb52790df58a9fa4b69c300fb550244e52c626d3117f2a33fa4f68c4ef8c747dc09cc34e12ba73a79faf637acebd4e2fecddb184d025d49d01526fe535a8a82e49f3acaecbec3dab0092a982e7f71720c701220558da536927bfb3161bb23ab47cef46b5cf43199abf778d05c1dea7f14f406b2b036fc0c223db2e223ebde468037910083e359db7feab0cd180d9146f23bc7c41161ca9e6da5acc9791ea7293cee3af9571d9c483920c1122c6090c57fb49171557b1df14a67c674e4a02c8fea66161e14c7ed255368703524c7a72a57527b3cf8f5af5160e0de7299b5ee0c6a0785b4fcd462e0b5b2b32ee208077002fba2376f37a6ecdb56659cb13a099f4e555f17b77674728d88246b66201e120104d3f69b2cbc06de1942c6a5844f81b7ce8bb436c2d8587b3a986c405b120fbb85988227facf7472cd4e6c98a92a4321b86dd23789e1597b2e010cecc659dadc917ba8a38002ffeaae4fc8ddcce7f2e8c4cea4fe969d748b787c854668fe6849a027a35e7b6335ebed506f6ebc6804549f3eb7d01d900eb4a107788a82dc6b8f8d32465e1bfaea6bb35fee2a09e3d7950cf5f3a092c7adfe514b9a9275a063e74c39850cf435eb9d713d7da973d75f9a65c766e67af2a9a0f65d4357551717d29ab4cc3d29cb5ecb819f8db1c86c9dc668d090a6349cba788bda9f81b48791a30f790c189240e4418315756bcb6c7ff006fff0022fd4d238d94c3f66ad901205d5786f22756fada2a53155c3295244434a9034122fe35a4dad65e17ff00d38bfd89f56a470ac4c5743003e22ea6d7512746f8a07c304f3ab5b30ce41532388d2260fd297db7ff0049bc47d69bfa4bfe99fec4fa35257e97b0766442722aac9b90002799e3518bb3120fb3cb86cc7bcf171ade34633c6d57360f713fb17fda2ad0a098e76c28d188a16cb05731049b1bc5a2d6347b36010c5c3f758939500c864dda4ccb5a2440a7f6afb8ff00f8dfeab557f4cfb989fdcbfec1428d7dac2ce70560dac48604d8a902e78aebf5ab41ba34cdabdd5fef4ff70a9c3f7f13fb97fd8b408535c1040208833bc70f0acfda7b3d32a8f648eaa7bc0a82f96f65b5e246f981beb756a56837984fd3fb1e22e64481244e1b3a83060c5f8da967f4ba29070f1f1908d24abafa30bd6ef67fbf8dfdc3ff006ad014b87db3d3c76d9d89b53a941b5241d49c3cac79664ac9c1fd25b423024e16228f873b2cf8cae95f463506907867ed764c61b3ba00f61dd60c8b2244c6b02f1a0ad0cde35e5fff00937ffccfff00b57b2c4d7d3e82bcdfc8d5f971d3e3cce294753504f5fc6a6ae1d0f89fa8a11bfcbeb58ad533543ebd0ab2b53bcf81a02aabd0bd593ee9ebe2a17d17cfef40573d75be818f5d6b56d75a06f74504ab424d5a5d57cfe8694743e34ca92d4a7ea6f575fdef5fa9a51d0f97fba9c2aa998f0fafe2a6afd75327ffd9),
('libro', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708161515181515161918181a18191818181a1918181818181a181919181818181c212e251c1e2b1f18182638262b30313535351a243b403b343f2e343531010c0c0c100f101e12121e3421232b3434313434343434343434343434343434343434343434343434343434343434343434343434343434343434353434343434ffc000110800b7011303012200021101031101ffc4001c0000010501010100000000000000000000030001020405060708ffc4003e10000103020403060404040601050000000100021103210412314105516106132232718191a1b1c14252d1f00714236233437282e1f192155363a2c2ffc400190100030101010000000000000000000000010203000405ffc40027110002020202020104020300000000000000010211032112314151042232617113b1428191ffda000c03010002110311003f00f2609e130536b24144c17382008d13b3cd250e8ab2c682f48f43ad84c352ccfb9b012855193276944a521ce3d1331e7c9cd26eec7755458c803018b9d549ef9731bca10ab3c80d6f24a95425e1c125791ad75fa2ff0015a93a6b60ae70ba791ed93e616549f8819a2249ba9d0ae0bc0320b47cd45a7c68a369cacd37bc3ea7a155f1b693f056a851b079dcfdd038ab1ce2d6304b9e4068fbfa05286e4921a526a2c1705c01c43cb44d8f88c587fcaec29f062c6f820db4362ac700e1c30f4c31a24c5cf32752af625ef116fd1754b0c65a671da4618a8691ccf042e738df126d53613c9770e2d7b487b6db8370b2313d98a4ebb3c1d05dbf0d9463f15425cbb0376a8e6386d39749f2ad235fb9717344822f1b2b4ee1cea0d3e1cc372d13efd163e26b64612e163a29b4e52a683d23238f71a7d7394d9b3a7eab4bb3dc41a59dd45ef0b95a8e9713d568f03c40a6f977b2ec9e28ff001f14816db3a2e05c51987c4b0567430679fca1ee8cae3f023dd5ee21da06d77b5a0b7235e1cc00ccbb405d6ebf35c5f11a81f50bb6256f700e145e0d430da4c2d351c4de357068dcc7d57364c18d5647a7414df48ec717c2e58fab5dd91ac602d6822731b7be82075555d8b66469a8c05ae6383402e6bda4685c77f443ff00d5862715e2b61c06b98d7434666d8483b92efa2cbc61ab5ebbd8c678812236680752760b91627fe5e37fa0cabc1a984c150c4537bb264a8d22328f091ca458fd561e37099896496c02e7123c21a3524f25d1f0ae18ec335f9de33bc06c3661ad99924efc957c3615ddf5563bc6c06f3e52c3265dcc47d13472a4db4ed2051c663f8254631b53ccc700e0e1b4e9986ca8b29c415e9ef919981b14b29c84f89ae691241f4263d21719c57863a91072c35f259e9cbd975e0f92e7717d8ae907e198f020128b8f21da2c8c0611ef786b1a5c790fbae8b0dc24e576670ccc896fa98d749e897238c6577b2d1c96b665d1a36b6a9d8f330b55f860d06d7548eba414bcb91a514f68cdc702e54461b75a58bb19d5573507b2bc1bad1368a590a746cc1255b07d261298728354c3655d807a73a238a7693aa7c333c43e68d54e6738011d14e52d9451d11c3099beaa63ce103bb2cba93ab1ce1c458256afa0ad761312eb93f15730187ca33aad59f980816256b5490cb0b4294db4922918a6db29e1b2baacbacb5b04d63abe80c7cd66e030f99ed710b67074d82b91a59472c96d2f456317565ac7869f138e5636e7d968764b8497b8e22a0d6cc07f0b361ea752b370584389af935a54dd7e4f78bc7a357a1d1a0d6b4340d13e18718dbed92cb2b74ba44cd9567383b523d14eab04dc02348fd547bb1cbf6396ff005564481bb2e96b1536d366bf031b23b5c378e96fba206de41f6d910146a003624741f659dc6b8152c4b0b7c4c77e668133d46eba31540d6df44eeaa351af34af7e0c78871aecae270d2e730bd83f1b01200e6e1ab7e9d5610785f44ff32ed0e9cff50b91ed1ff0f195c1ad86caca86e582cc79de3f23be49d64afb8149f4794324adae17c4aad20436ed7799a749d27a1413817537963da5af698735c2082b430d466c0127a09426e3254d5a26dd01a750be730f166058e1f84f25d1d3e28e0c796782a3e33b80f11ca23c3f33ee834f8638b08c8448b48884d4783d420870b816748bfcd72e48a92aa0ab7f82ce11d41e432a3eac3b2cd40ed1c45f3348d2558635d46a3a917c92eeee26ce69f2124ed707dd0387f0da8da8c2f6f801f1dc6da5a7d116b60aa3f12eaae6f87382d1985c340683d2c173cb14adaa75561a756478abaa83fd364b6038e5b9074735c06d65978ca6eaa1ae6c8810f6b8c061b693b195bf5f8739cf151af0db005be21a727050c7e00b98430364eb24cb8ec498d06b08e3528d5269fbafec57176c8616b53c1512f90e7bc7879b9db7a342cfe195cc49324dcaa953b3f8932e80f204c35c4ba06b008bfa22e0480d4d2c3c536ddb7d8caf46cbc8705858f6c1477e28830aa628e6dd0c50716372a29558859b56ac2b5897c2ccaa492bba1104986ef93aab0532ad214acd6dd59c33441255769b2b3861e13c917d0f1ec961dbe2255de1f4eee79d02a548493b42b3877b831dc8a9cb65a0d269bfc91c4bcbdca389203728d55aee806663a9541f4c81277d108d7fc34d3edf92e60680eecbc9bce8afe11c5ec75f4d951c1623fa792379952c33f2484924dd94834a8d3c33f2659d54ea31efa81acf3bf7fc8cddc7ec9f0e5994d479b34586e5db003992ba5ecbf0b226ad5f3be0bbfb47e160e8024c70e526df83659f1548dce05c3d9469b5a06defea7a9d568567e9063f76417168dd527d5cd062df7e53a1f430ba542dd9c8e5458eee7f19ebfbdbdc2634c5bc7ca34bfdbe0abb5f246c3d2e39f51f3099a4df41ccdbd45f49b8b184fc58bc9165cc07f15fd0db6f5db7054d9403459c47b0bfb4c7c21566ea4106274136df4d7e0ac327639ba489f8fea8d7e4161bbc60b127d8697df9270cdda6df107f4501949bea3d88f429c30b74fdfa81aa146b2c53a97dc1fde854854ca6418e6aa9ac0d8ea7ebd0f3f9a055a862e52c919333fb4b83a7897b1eeb399671000cecd9a4fafdd53616b043181a00f4be91fb28f88a9a8f73ff006aa93780473d472d2ced568c2876c2ff003062d1cc69e91e649b89773b4dcc0f7defff00098541f9493a19711c89fdf44bbc699f0f2fc4efd13f142f20bfcd18f29e5efec3e69c624eede5bf3f6432f689397aea6e66748fdc04cd73240c83a5fafeab7140b0e710de7f23fa22955b0f95c7ca047232aed2a799c0257a0a34b8552ca336e7e9ff007f45caf6b3878a0fef9b6654743ad66bdde9b3beb3d177586a3a35705fc4ae22054a3871a30f7ef1d44b2983ef9cfb050715274ca3e8c3a8c417be1429e28382a98aaf7528c5b74498aab6555a94827ef6505ef578a680d92eec24abf785254a6629c595dc3d4f0110a96caee10c0b8b232e8b434c663001d4a9537d889b1286f778a36456b64001231d77a2cb0cc8e49daccee0dd9baa96024970e8ab35ee638f32612796915bd26fa1dc40a900582d0c2e56b9d985e2421e1180ba4a586c2bb115bbb6d9babddf959cbd4a15c9d1ad45727ecd3ecc70e359fde38781ae391bb39dbbcf40bd069b03442adc3f08da6c0d68800000720acbdf168dbdbd09d95d2f08e494addb035df78b58661b9f87e8966699d5b16906defb7c50d8d8b1ea637bff006ef16f29485ae4c6809df5e7aefa39504610d13d0b62d1a7fe3b7b14ce31efbf21a825d13cb509532440169d34dba6847a2338dfc4dda3337e96b808801743b998007bd8d8fb2b0d6024169b8d419044df51f429309e8e6f3dc7d8a864b4b351b1b11d01d47d10306cf367349e76b8ebd7d919b61124f52ab32bb9b677b7e6f68b3bf7652710e12d75f98fa108308d5698267d27ac68aa62eac2b355f02eb2ebbe4c7efe612a56c3d202e76b260936d01f7b83bfcd317f5e87c42c6664f8fd6dd1273fac5f981aff00bc72faa4f7ebe288d65c2d13ff00c963654009c248b8dc6a2f6cc0f9b914cd871da2c01969bdb58373629f34efb4f9a469aff89ca53b5db824cb882731d341fe6729f874406065c224b80b7365efb12fd8c99b69ec9dee171a6840ccdd3cd102a6b275b2911af9b51bbe48931f8efa7ba2369cb80330409f381196f3220dfeab183e1984364ea7d74db571dbaadde0584cc4bc8b683eff00beab29ad9200decbaec050c8c03e3f7fdf45cf9a54a8782d93ad00b4980049276006ebc0b8f711efebd4ae7fcd717b419f0d26f869083a1cad2eff00705eb3fc43e2059852c69cafaee14184da1afbd471e40303afd579af12ec8d7639eff096020530d399cf6443001d1a00f6538ca3057275634d36a919782328989a1bad7c1f047d26e6aee6b2746932f3ec159c460d9903daf6baf05ba387585379972d6c9f1672d92141e16a6230eb32b08578c9485a0791250ef1254d80a6fd95e27c2d0a8e692af666c7a05a5e0b45f6419a9956b09473be07240633c322eaf61ce4cb1bca9c9eb4571c6dec853616bc8954b176f59560553dea1d401d53c44002493d168e9efd0654d52f658a25cc68b4b9fe16379b8aef3b33c1c51678aef3e27bbf33b97a058bd95e186a3bbf788b45307f0b3f34732bb9632042a4635fb23395e9743cc2a954e733f846978bdc6bb1d88364b13583bc205f791768e79758ea120ed275bde4e91acc41d347725448931ba69630dd34fedf85da6e9078106c6fa9248dad9f51e8e5068d8ec262274d0e4db7bb4a7799b9369b12445f9380f938260077b03bc20e53f948b1f41a1f509e9b5e2c36ea4822fa13707e2820ea36f4b93a9f068e9bdc15265420c0d35b991044893ab3dc2c60ad226e323be44ef1163f54527f38d3470db6f50a2cac0c036274048bfa1d0a93585be5ff00c4e9edc90008cc7e769f4b0fba66344e60644475b733bfba6dede170db677ebea9ebbe0256148ad8aa9fb826eb3a08d8ceba6a7e011314e9311317dcccebf84a139bc8723a691bff0087ac8d13c5520b119245cfc5fd46c7a29303ac7c57b9f3eb267fe9119876913274fcad117da5b3cfe29dd8369dfd258c31d07874580065d1304ed3e3dc6be53688ba7734de6771ab84e5de0b0c1826e3528dfcaee08da3c0ddb4d3dbe0a2dc2902c5b6322ce1eb203aeb18040244c1005e721d39cb06d22dc95cc34101c1a05a0441b4ec46c978ede537bea2dd3546039256c28d2e0987cef93a36feeba9859fc1b0b918275372a5c7389370d87ab5dda3185c07e6768c6fbb881eeb8a72e523a22a951c0769788d0ad8e7ff0030f6368e199dd3438d9f55f0eab03786c34ffcaa3c77b714f264c289796e5ef0b6031bb8603a9f92e0b8bd625f95d77b7339eefcd55e73543ec4e5ff006aa6c7a77f1a336a52dd78f02ca4d691b0318e27339c5c7993255ca38c95802a2b587a909a58d5133a0cf2165e369a2b311641a8f9528c5c598a1dda4ae64495ec14645217564b65c8748402a7482690f14387106068ade1f10079b6d1430ec93e8a38b6da54dd374555a564dafbe7e655ce0dc30e26b5eec6919bfb8ecdfd550a541cf7369b753bfe51bb8af4ee01c31b469b401b7d7527a9548aad8929783470b870c68013629e4445a4c58899d800441f8847052734110448e453224ccedfc5ce5dad858c96f99874d2d695603da75f0ba08d64183105da3bd0dfd149f87bc83b1b6e3fd0ed47a68aa817ca6d305cd86e631ae66c16be7a41d138a15d4481044017900911791132c3e8a34c349b921c41cae907301c9c2ce17dc28d3c46500e8395cb45ee4db3337d66e8b9dae88f039c246978f93bd3d5130cfa440d011e6b091234867c3448069f13898810efc2dd059e2fa9fc5c92cae6031a5b996e867c3ab44f291a5938acc24171ca67c2e9f0bba822c6fb158c4dd40ed7040168bef769f0992499b1ba396385da647e53a7b1dbe682da65a4459a04f87436932ce67985658f0448321066166de3e2a8e2aa589902373a4ab5887c05975aa4d84da79ebd0820c6a952b61e90073c107427d59abb78cdcbea9db1a5b633e1d7283b3ec7d13cba64976b31fd488004da0ca83df0492634bce83fdccea13802061816769b07733c9e7a27690273178e51de441889371bc29b7182da1ea1cd3d39cebf7446e27fb5df007e84ac31025bf9de20c6bbfb852609b36a4c1bd984fa585b7527624089cc2772d31efc926d764c02256313a6d76e41e568fbabfc330f9de06c2e7d9535d2767f0d9599ceaefa6ca3965c623c15b359a21707fc46e22c73e8615cecac9fe62b9178630e56348eae3ffd42ef1ce00126c00927905e05da3e307115aa5607fc47cb7a5164b298f7f13be0b960acadd6d991c7b0ac65579a4fcec265a49975ee67de566342d9e274699a4c7b1c3368f61d41e6b1495d78ddc494953279d4daf4144627a14b4cac559a7525505363d238d868bddea4a9e6492f100ba2331901576be627646aceb2cfd155ec261ec0942ace248562911923750608b94a9edb1dad24220dded2e6386e0ebd08dc2d8e0fdaaab4400f1999a4c12dfd59ed6fed59ae3998e1eeadf050d3958ef2937ebd0ace7c5360e0a4e8f40e17c6a9570323849fc2489f63a1faf301694af34e3b80a549e0e1df91d025a0cb49f4dbe9d11f8576c9f4c8657198699819f83bf59f509b1cd4d5a273c6e2e99e8b2a3518d7087004722a8f0fe294eb0963c1e9f887b7dc594788f15652ca20b9eef2b06a63524ec152e84516dd20d530a449692ef0c0b80f1d1af3ff00ea7d555b9ccd31240f0c5e362f61206805da6c3e59b5388bdee2478245f29bfc4fd602c9c6718731c0e7739db49920a55913e8aff04977a3ac6d7c8d067c30752e2d17904bc8ccd91b19e4a9d4e30c310ca8d246b0d0379f09b3b53a80a1c23bcc41cf57cb6cad1a7aad0c7f0e0d19a3c26d07630a4fe42e5c5158fc5a56c2e0710dca5c0434bb6931fea1f876e9757400248df53cd737d9e7bb33e2cd2771208160419b1f5d96e626b40f55652b4734a2949a457c555d4cc6a07c35d0ace6c69636248f0685a2e465123453ad55c66018d040276d416bbaa8bea103cc46a4789e2c1b370e69d9512a4230b4f244643a8b8cb7d60f84fee549c5979ced9b9f38dbe5ae8ab8822c2677cb4dde21ce20f4f7441b4881107c2f69ca08d08242c1a0c5ecbf8e378396daec475f924dc38d8b4efe56ebb1f0c75426d4d89da078f5db470f528ac0db07324f3869fa2c613f0eeda3d9cf6dfd8944a54ccf8a79f9b309168b89421ddceae6fbb87d55a63606a4faa0d983e1a897bdac1b9f96ebb4a6c0d000d00585d9dc36af3e83eeb7d716695cabd168aa472dfc43e2669614d36987d73dcb3980ef3bbd993f10bc76bd304c8d0406ff00a4080baaedff0016efb18e683e0a0deedbc8bdf7a87d8405cc3cd918fd291a7e8cac4aa6af5764941ee57445e8900526a30a69c524d6606138089dda41a8585b1b2a48b29216000c223553ab541004aa6926e232968b8dc541e61582f98311d150c3325c169e44ae2868b6c89aa620581436bc8d091eea6589b2a2a282db04f24a1b9a8e5aa042642b21877bd8e058e2d33b1dd7a0f65b0efaefef6a1cce8024f21c971380c3e7781b9365ec5d9fc00a54408b9125737c89d2e3ece9c10a4e4ce6fb4151b4d8f769ac2e2f83e18d6aa1cee765b3daccef7e46e80dcad7ec5f0897e6d9ba20e4a30b2a9394b7d23b5e13800d6011b2c7edff00126d0a6c60bbde4c01ac0104fcd752faada6c73dc61ad69738f200495e7d4f0efc6d67621e233598d3f8183ca3d4ea7d5734693e4c751736fc189807d78cc5e583660316eb1a95a786e26e7cb5e61c06bd39c7352c5610b1c45edb2e7ab57777efc86328027e67f7d1764257b2193124a91d1d2bc18136980c70d241110412378d9199631a481ffb8cbcc889902caa70aaf9c963e1c626604f220fb13f35a630edda5ba68e234b05d0a48e4945c5d304d39ade69326ec7817e460ffda93585b2600ff6bd9007569e508a284fe29d8c869f49dd2ee1c2e00d20439cde9e8b58288e79fee074f1836f470ea9168bc8e9393eedd959653b5efeb063dd37f2edd847a1216b302a42604e97b38e9e855d6364868d4980834d9946a4faad8ecfe173bf39166e9ea54e72e2ac3156ce870740318d68d87fdaa9da0e2630d86a95ddf8184b47371b347b921692f35fe29714ccfa58569b0feb54f416634fbc9f60b8a2b948a9e7788799f1197197bcf37bce671f9a4d7a1d432492983574d1072b63bc213915c1472ca2800da8cc0141cc4cd45ecc12a3141ac0a52a05c82b313eed3a866490d98ca493275d012de005cad10566e08eaaee74aca45e899502544bd40bd60b648950374c5c89419256605b367b38c1deb415e9efc78630f40bcb78548a8085ddb199db07dd71675f5267a18927048e6f12e755a931e62bd0bb3f840c600173185c0ff583468bbac1d3cad529cb9348a4ea31a5e4caed75273f0f95a6c5cdcf1bb4198f424042ecfe0f2b248d56863dd9a1bcd5bc330340093f02f2e30a388edc631b4b311e6301a3995c870ac29ca5cef3389267aad4e30e762718f79f2537163075167140c402d36d1764751489717db09c2ed5a393493f20ba3695c1e138de4aaf25b981b58c180ba3c271fa2fd5c5a7fb87dc2bc748e59fd523758d0341aeaa60aad4710d7795c0fa147056b15c424a454652251b16845763c230b92981b9b9f52b9ae0f86cf50726f88fd9762b9b34f7c478aa446bd50c6b9ee301a092790024af02e27c40e22b55ae7fcc792de8c6d983e002f4cfe26715eef0c28b4c3eb1c9d433579f85bdd794170d0682c3d0218e3ab349d222e624d615363d596b842a395102939884e690ad54784175d14cc0a53b427731334a228ce432511e50e111878493a740c64a74c92b843e1ddaab19953a66eb7f09d9fa8fd61bea7f45394a31fb9d16c78e53d4559965e9a575f85ec9b079de5dd0405a3fc8e1a882ec8db0993e231eeb9dfcb8ad4559d4be1cbb93a3816b4eeae5109b1d8bef6a39fb68d1c86c898612ba136d5b39e972696cd5e114fc72bb7c036cb94e0f4bc4baec2b480b8f3bd9dd0551a2ff000bc3f8cbd6e075951c03602b92b9d09276c0369cba4ab4ed3d940a77e889bb381c4e0bba716c6e4cf39332b178d560046e57a2715e1c5edccd1e21f35e65c6a99cee9d8c42e8c724d6c5cd3a8da306ae019ab491f30ab163dba10ef9157aa30a09615d316cf3ee8852c7bd9a870f45ad83ed2bc7e39e85676430ab54a20ec8d263acad1da61fb4f3e603d96951e394ddbc2f386d023471088c7d41a10e5a9f863ff245f68f7eecc536f741e0ce7bcf4d96c12bc5bb23dbb7e17fa7598e752276bb984ea4731d176bc7bb6f8738673b0f55afa8f1918d07c41ceb496ea21724a32e5b4369f470fdb4e29fcce29ef07c14ff00a4cea479dc3dfe8b9a255e2c0d01bac6a7993a9437d20af1692a21376c031ea6e7a13990a129a840a0a89510f2a41eb189936402559b42a9535591891724d2a202644c1d2419492d18cdca900a69c315ec6a2216f70ce3cf6001c33002d783eeb1fbb812a2d292518cd532b8f24b1bb8ba3a8e21c7ea3d9e0219e973f12b3dd8c270e4492e2e19893248d7ec8187a7998ebaa99bc31d54638e2b4974ca4f2ce5b6fb44a9ad2c136eb3e885b1806495693a42e256ce9f82531aae9b0cc92b078580d0b7f86dccaf3b23b67a2d5235da32846a57ba03cecac52b0488832402996a66845844163010178f768f1cd7626ac681e47c0007e6bd678a62453a4f79fc2d27e4bc0f12e2e7b9c752493ea4caae18f293219e5f4a2fbaa34a6c8d59cc25586930ba5aae8e4b26f002131928556a152a35c26a691ac2d4a70157015b6d40549ac69414a96cc571d53329b6640823747aac4169593b3042e3cd307a1b8ca6ca775a8c2a8f4294429f2847a30294d29546a184d460c2a2838a4a0e2b2460ad5194cc29140c4a524d292d46238ec07762419f82a4d29249a0db8ecbe68a8cdd05ce62135375e132489365aa550b4cecabd5ab264734c9211ec32e8877a5169e29c34252493315365da5c62ab74795bbc27b6952959c330f9a49249628bed168669fb3afe19db4a554804107d0fd975d43121c042492e0c9149e8ec5b8a6cb54d1a5324949b390fe2163b25114c6af307d05caf31aad0924af84e6cdf77fa19948238a612495592296269aa796e924ab1e8068d1a36943738849249e5805de4a8393a48982534579109924afb3151cc51984924e8c45ce5109d244c312a24a649631205294e92c61a53a492c63ffd9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
