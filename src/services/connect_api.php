<?php
     class Connect
     {
          public static function ConnectDB()
          {
               $host = "localhost";
               $user = "root";
               $pass = "";
               $dbname = "hubhowhow";
               $port = 3306;

               try {
                    //Conexão ao mysql com a porta inclusa
                    //$conn = new PDO("mysql:host=$host;port=$port;dbname=". $dbname, $user, $pass);

                    //Conexão ao mysql sem a porta inclusa
                    $conn = new PDO("mysql:host=$host;dbname=" . $dbname, $user, $pass);
                    return $conn;
                    //echo "Conexão realizada com sucesso!";
               } catch (PDOException $err) {
                    echo "Erro: 1 " . $err->getMessage();
               }
          }
     }
?>
