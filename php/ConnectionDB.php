<?php

class ConnectionDB {

    private $db_host = "localhost";
    private $db_user = "root";
    private $db_password = "";
    private $db_database = "df_framework";

    public $connection;

    public function connect() {
        $this->connection = mysqli_connect($this->db_host, $this->db_user, $this->db_password, $this->db_database);
        mysqli_set_charset($this->connection, 'utf8');
        return $this->connection;
    }

    public function execSingleQuery($query) {
        $result = mysqli_query($this->connection, $query);
        return $result;
    }

    public function execMultipleQuery($query) {
        $result = mysqli_multi_query($this->connection, $query);
        return $result;
    }

    public function disconnect() {
        mysqli_close($this->connection);
    }

}
/*
$object = new ConnectionDB();
$conn = $object->connect();
if(!$conn) {
    echo "Connessione fallita";
} else {
    $query = "SELECT COUNT(*) AS total FROM digital_investigator";
    $result = mysqli_query($conn, $query);
    $json =  array();
            while($row = mysqli_fetch_array($result)) {
                $tmp = array();
                $json["results"]["total"] = $row["total"];
            }

    echo $json["results"]["total"];
}
*/
?>