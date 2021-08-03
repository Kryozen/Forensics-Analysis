<?php

class Drone {

    private $connection;

    public function __construct() {
        $this->connection = new ConnectionDB();
    }

    public function getTotal($post) {
        $this->connection->connect();

        $type = $post["device_type"];

        $query = "SELECT COUNT(*) as total
                  FROM device
                  WHERE device.type = " + $type;

        $result = $this->connection->execSingleQuery($query);

        $json =  array();
        while($row = mysqli_fetch_array($result)) {
            $tmp = array();
            $json["results"]["total"] = $row["total"];
        }

        $this->connection->disconnect();
        return json_encode($json);
    }

    public function getAll($post) {
        $this->connection->connect();

        $from = $post["from_result"];
        $for = $post["for_result"];
        $type = $post["device_type"];

        $query = "SELECT *
                  FROM device
                  WHERE device.type = " + $type + "
                  LIMIT ".$from.",".$for."";

		$result = $this->connection->execSingleQuery($query);

		$json =  array();
        $count = 0;
        while($row = mysqli_fetch_array($result)) {
            $tmp = array();
            $tmp["id"] = $row["id"];
            $tmp["brand"] = $row["brand"];
            $tmp["model"] = $row["model"];
            $tmp["owner_name"] = $row["owner_name"];
            $tmp["owner_surname"] = $row["owner_surname"];
            $tmp["type"] = $row["type"];
            $tmp["notes"] = $row["notes"];
            $json["results"][$count] = $tmp;
            $count++;
        }

        $this->connection->disconnect();
        return json_encode($json);
    }

}

?>
