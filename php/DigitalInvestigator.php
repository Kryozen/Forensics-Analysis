<?php

class DigitalInvestigator {

    private $connection;

    public function __construct() {
        $this->connection = new ConnectionDB();
    }

    public function getTotal() {
        $this->connection->connect();

        $query = "SELECT COUNT(*) as total
                  FROM digital_investigator";

        $result = $this->connection->execSingleQuery($query);

        $json =  array();
        while($row = mysqli_fetch_array($result)) {
            $tmp = array();
            $json["results"]["total"] = $row["total"];
        }

        $this->connection->disconnect();
        return json_encode($json);
    }

    public function getAllNamesSurnames($post) {
        $this->connection->connect();
        
        $from = $post["from_result"];
        $for = $post["for_result"];

        $query = "SELECT id, name, surname
                  FROM digital_investigator
                  LIMIT ".$from.",".$for."";

		$result = $this->connection->execSingleQuery($query);

		$json =  array();
        $count = 0;
        while($row = mysqli_fetch_array($result)) {
            $tmp = array();
            $tmp["id"] = $row["id"];
            $tmp["name"] = $row["name"];
            $tmp["surname"] = $row["surname"];
            $json["results"][$count] = $tmp;

            $count++;
        }

        $this->connection->disconnect();

        return json_encode($json);
    }

    public function getAll() {
        $this->connection->connect();

        $query = 'SELECT *
                  FROM digital_investigator';

		$result = $this->connection->execSingleQuery($query);

		$json =  array();
        $count = 0;
        while($row = mysqli_fetch_array($result)) {
            $tmp = array();
            $tmp["id"] = $row["id"];
            $tmp["name"] = $row["name"];
            $tmp["surname"] = $row["surname"];
            $tmp["agency"] = $row["agency"];
            $tmp["category"] = $row["category"];
            $tmp["specialization"] = $row["specialization"];
            $json["results"][$count] = $tmp;
            $count++;
        }

        $this->connection->disconnect();
        return json_encode($json);
    }

}

?>
