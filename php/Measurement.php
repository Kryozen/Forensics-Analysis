<?php

class Measurement {

    private $connection;

    public function __construct() {
        $this->connection = new ConnectionDB();
    }

    public function getTotal($post) {
        $this->connection->connect();

        $type = $post["device_type"];

        $query = "SELECT COUNT(*) AS total
        FROM (((measurement)
        JOIN log ON measurement.id_log = log.id)
        JOIN device ON log.id_device = device.id)
        WHERE device.type = '$type'";

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

        $query = "SELECT measurement.id, measurement.timestamp, measurement.notes, measurement.id_log
        FROM measurement JOIN log on measurement.id_log = log.id
        JOIN device on log.id_device = device.id
        WHERE device.type = '$type'
        LIMIT ".$from.",".$for."" ;

        $result = $this->connection->execSingleQuery($query);

        $json =  array();
        $count = 0;
        while($row = mysqli_fetch_array($result)) {
            $tmp = array();
            $tmp["id"] = $row["id"];
            $tmp["timestamp"] = $row["timestamp"];
            $tmp["notes"] = $row["notes"];
            $tmp["id_log"] = $row["id_log"];
            $json["results"][$count] = $tmp;
            $count++;
        }

        $this->connection->disconnect();
        return json_encode($json);
    }

    public function getTotalForLog($post) {
            $this->connection->connect();

            $id_log = $post["id_log"];

            $query = "SELECT COUNT(*) AS total
            FROM measurement
            WHERE measurement.id_log = '$id_log'";

            $result = $this->connection->execSingleQuery($query);

            $json =  array();
            while($row = mysqli_fetch_array($result)) {
                $tmp = array();
                $json["results"]["total"] = $row["total"];
            }

            $this->connection->disconnect();
            return json_encode($json);
        }

}

?>