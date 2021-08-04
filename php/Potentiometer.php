<?php

class Potentiometer {

    private $connection;

    public function __construct() {
        $this->connection = new ConnectionDB();
    }

    public function getTotal($post) {
        $this->connection->connect();

        $type = $post["device_type"];

        $query = "SELECT COUNT(*) AS total
                  FROM (((potentiometer JOIN measurement ON potentiometer.id_measurement = measurement.id)
                  JOIN log ON measurement.id_log = log.id)
                  JOIN device ON log.id_device = device.id)
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
                  FROM (((potentiometer JOIN measurement ON potentiometer.id_measurement = measurement.id)
                  JOIN log ON measurement.id_log = log.id)
                  JOIN device ON log.id_device = device.id)
                  WHERE device.type = " + $type +"LIMIT ".$from.",".$for."" ;

        $result = $this->connection->execSingleQuery($query);

        $json =  array();
        $count = 0;
        while($row = mysqli_fetch_array($result)) {
            $tmp = array();
            $tmp["id"] = $row["id"];
            $tmp["brand"] = $row["brand"];
            $tmp["model"] = $row["model"];
            $tmp["accelerator_angle"] = $row["accelerator_angle"];
            $tmp["id_measurement"] = $row["id_measurement"];
            $json["results"][$count] = $tmp;
            $count++;
        }

        $this->connection->disconnect();
        return json_encode($json);
    }

}

?>