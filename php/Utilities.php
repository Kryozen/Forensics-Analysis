<?php

class Utilities {

    private $connection;

    public function __construct() {
        $this->connection = new ConnectionDB();
    }

    public function cleanDB() {
        $this->connection->connect();

        $query = "  DELETE FROM barometer;
                    DELETE FROM battery;
                    DELETE FROM gps;
                    DELETE FROM photo;
                    DELETE FROM video;
                    DELETE FROM measurement;
                    DELETE FROM log;
                    DELETE FROM drone;
                    DELETE FROM log_investigator;";

        $result = $this->connection->execMultipleQuery($query);

        // DA VEDERE PERCHE' NON FUNZIONA TRAMITE PHP, MA DA QUERY SI
        $query = "  ALTER TABLE barometer AUTO_INCREMENT = 1;
                    ALTER TABLE battery AUTO_INCREMENT = 1;
                    ALTER TABLE gps AUTO_INCREMENT = 1;
                    ALTER TABLE photo AUTO_INCREMENT = 1;
                    ALTER TABLE video AUTO_INCREMENT = 1;
                    ALTER TABLE measurement AUTO_INCREMENT = 1;
                    ALTER TABLE log AUTO_INCREMENT = 1;
                    ALTER TABLE drone AUTO_INCREMENT = 1;";

        $result = $this->connection->execMultipleQuery($query);

        $this->connection->disconnect();
        return json_encode("DB successfully clean!");
    }

}

?>
