<?php

class Log {

    private $connection;

    public function __construct() {
        $this->connection = new ConnectionDB();
    }

    public function getTotal($post) {
        $this->connection->connect();

        $type = $post["device_type"];

        $query = "SELECT COUNT(*) as total
                  FROM log JOIN device ON log.id_device = device.id
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

        $query = "SELECT *
                  FROM log JOIN device ON log.id_device = device.id
                  WHERE device.type = '$type'
                  LIMIT ".$from.",".$for."";

		$result = $this->connection->execSingleQuery($query);

		$json =  array();
        $count = 0;
        while($row = mysqli_fetch_array($result)) {
            $tmp = array();
            $tmp["id"] = $row["id"];
            $tmp["report_number"] = $row["report_number"];
            $tmp["acquisition_place"] = $row["acquisition_place"];
            $tmp["notes"] = $row["notes"];
            $tmp["id_device"] = $row["id_device"];
            $json["results"][$count] = $tmp;
            $count++;
        }

        $this->connection->disconnect();
        return json_encode($json);
    }

    public function getAllId() {
        $this->connection->connect();

        $query = 'SELECT id
                  FROM log';    //!! Va modificata

        $result = $this->connection->execSingleQuery($query);

        $json =  array();
        $count = 0;
        while($row = mysqli_fetch_array($result)) {
            $tmp = array();
            $tmp["id"] = $row["id"];
            $json["results"][$count] = $tmp;
            $count++;
        }

        $this->connection->disconnect();
        return json_encode($json);
    }

    public function getLogById($post) {
        $this->connection->connect();

        $log_id = $post["id_log"];

        $query = " SELECT
                        log.id as id_log, log.report_number as report_number, log.acquisition_place as acquisition_place, log.notes as acquisition_notes,
                        digital_investigator.name as df_name, digital_investigator.surname as df_surname, digital_investigator.agency as df_agency, digital_investigator.category as df_category, digital_investigator.specialization as df_specialization,
                        device.brand as device_brand, device.model as device_model, device.owner_name as device_owner_name, device.owner_surname as device_owner_surname, device.type as device_type, device.notes as device_notes,
                        measurement.timestamp as timestamp, measurement.notes as measurement_notes,
                        battery.brand as battery_brand, battery.model as battery_model, battery.voltage as battery_voltage, battery.percentage as battery_percentage,
                        barometer.brand as barometer_brand, barometer.model as barometer_model, barometer.altitude as barometer_altitude,
                        gps.brand as gps_brand, gps.model as gps_model, gps.satellites_number as gps_satellites_number, gps.coordinates as gps_coordinates,
                        photo.brand as photo_brand, photo.model as photo_model, photo.path as photo_path, photo.size as photo_size,
                        video.brand as video_brand, video.model as video_model, video.length as video_length, video.path as video_path, video.size as video_size,
                        accelerometer.brand as accelerometer_brand, accelerometer.model as accelerometer_model, accelerometer.acceleration as accelerometer_acceleration,
                        brake_sensor.brand as brake_sensor_brand, brake_sensor.model as brake_sensor_model, brake_sensor.pressure as brake_sensor_pressure,
                        gyroscope.brand as gyroscope_brand, gyroscope.model as gyroscope_model, gyroscope.rotation as gyroscope_rotation,
                        hrm.brand as hrm_brand, hrm.model as hrm_model, hrm.heart_rate as hrm_heart_rate,
                        potentiometer.brand as potentiometer_brand, potentiometer.model as potentiometer_model, potentiometer.accelerator_angle as potentiometer_accelerator_angle,
                        tachometer.brand as tachometer_brand, tachometer.model as tachometer_model, tachometer.rpm as tachometer_rpm,
                        wss.brand as wss_brand, wss.model as wss_model, wss.speed as wss_speed
                    FROM log
                    JOIN device
                        ON log.id_device = device.id
                    JOIN log_investigator
                    	ON log.id = log_investigator.id_log
                    JOIN digital_investigator
                    	ON digital_investigator.id = log_investigator.id_investigator
                    JOIN measurement
                    	ON measurement.id_log = log.id
                    JOIN battery
                    	ON battery.id_measurement = measurement.id
                    JOIN barometer
                    	ON barometer.id_measurement = measurement.id
                    JOIN gps
                    	ON gps.id_measurement = measurement.id
                    JOIN photo
                    	ON photo.id_measurement = measurement.id
                    JOIN video
                    	ON video.id_measurement = measurement.id
                    JOIN accelerometer
                        ON accelerometer.id_measurement = measurement.id
                    JOIN brake_sensor
                        ON brake_sensor.id_measurement = measurement.id
                    JOIN gyroscope
                        ON gyroscope.id_measurement = measurement.id
                    JOIN hrm
                        ON hrm.id_measurement = measurement.id
                    JOIN potentiometer
                        ON potentiometer.id_measurement = measurement.id
                    JOIN tachometer
                        ON tachometer.id_measurement = measurement.id
                    JOIN wss
                        ON wss.id_measurement = measurement.id
                    WHERE log.id=".$log_id."";

		$result = $this->connection->execSingleQuery($query);
		
		$json =  array();
        $count = 0;
        while($row = mysqli_fetch_array($result)) {
            $tmp = array();
            $tmp["id_log"] = $row["id_log"];
            $tmp["report_number"] = $row["report_number"];
            $tmp["acquisition_place"] = $row["acquisition_place"];
            $tmp["acquisition_notes"] = $row["acquisition_notes"];
            $tmp["df_name"] = $row["df_name"];
            $tmp["df_surname"] = $row["df_surname"];
            $tmp["df_agency"] = $row["df_agency"];
            $tmp["df_category"] = $row["df_category"];
            $tmp["df_specialization"] = $row["df_specialization"];
            $tmp["device_brand"] = $row["device_brand"];
            $tmp["device_model"] = $row["device_model"];
            $tmp["device_owner_name"] = $row["device_owner_name"];
            $tmp["device_owner_surname"] = $row["device_owner_surname"];
            $tmp["device_type"] = $row["device_type"];
            $tmp["device_notes"] = $row["device_notes"];
            $tmp["timestamp"] = $row["timestamp"];
            $tmp["measurement_notes"] = $row["measurement_notes"];
            // I need to distinguish sensors based on the device
            if($tmp["device_type"] === "Drone") {
                $tmp["battery_brand"] = $row["battery_brand"];
                $tmp["battery_model"] = $row["battery_model"];
                $tmp["battery_voltage"] = $row["battery_voltage"];
                $tmp["barometer_brand"] = $row["barometer_brand"];
                $tmp["barometer_model"] = $row["barometer_model"];
                $tmp["barometer_altitude"] = $row["barometer_altitude"];
                $tmp["gps_brand"] = $row["gps_brand"];
                $tmp["gps_model"] = $row["gps_model"];
                $tmp["gps_satellites_number"] = $row["gps_satellites_number"];
                $tmp["gps_coordinates"] = $row["gps_coordinates"];
                $tmp["photo_brand"] = $row["photo_brand"];
                $tmp["photo_model"] = $row["photo_model"];
                $tmp["photo_path"] = $row["photo_path"];
                $tmp["photo_size"] = $row["photo_size"];
                $tmp["video_brand"] = $row["video_brand"];
                $tmp["video_model"] = $row["video_model"];
                $tmp["video_length"] = $row["video_length"];
                $tmp["video_path"] = $row["video_path"];
                $tmp["video_size"] = $row["video_size"];
            } else if($tmp["device_type"] === "Smart vehicle"){
                $tmp["gps_brand"] = $row["gps_brand"];
                $tmp["gps_model"] = $row["gps_model"];
                $tmp["gps_satellites_number"] = $row["gps_satellites_number"];
                $tmp["gps_coordinates"] = $row["gps_coordinates"];
                $tmp["brake_sensor_brand"] = $row["brake_sensor_brand"];
                $tmp["brake_sensor_model"] = $row["brake_sensor_model"];
                $tmp["brake_sensor_pressure"] = $row["brake_sensor_pressure"];
                $tmp["potentiometer_brand"] = $row["potentiometer_brand"];
                $tmp["potentiometer_model"] = $row["potentiometer_model"];
                $tmp["potentiometer_accelerator_angle"] = $row["potentiometer_accelerator_angle"];
                $tmp["tachometer_brand"] = $row["tachometer_brand"];
                $tmp["tachometer_model"] = $row["tachometer_model"];
                $tmp["tachometer_rpm"] = $row["tachometer_rpm"];
                $tmp["wss_brand"] = $row["wss_brand"];
                $tmp["wss_model"] = $row["wss_model"];
                $tmp["wss_speed"] = $row["wss_speed"];
            } else if($tmp["device_type"] === "Wearable"){
                $tmp["battery_brand"] = $row["battery_brand"];
                $tmp["battery_model"] = $row["battery_model"];
                $tmp["battery_percentage"] = $row["battery_percentage"];
                $tmp["accelerometer_brand"] = $row["accelerometer_brand"];
                $tmp["accelerometer_model"] = $row["accelerometer_model"];
                $tmp["accelerometer_acceleration"] = $row["accelerometer_acceleration"];
                $tmp["gyroscope_brand"] = $row["gyroscope_brand"];
                $tmp["gyroscope_model"] = $row["gyroscope_model"];
                $tmp["gyroscope_rotation"] = $row["gyroscope_rotation"];
                $tmp["hrm_brand"] = $row["hrm_brand"];
                $tmp["hrm_model"] = $row["hrm_model"];
                $tmp["hrm_heart_rate"] = $row["hrm_heart_rate"];

            }
            $json["results"][$count] = $tmp;
            $count++;
        }

        $this->connection->disconnect();
        return json_encode($json);
    }

    public function insert($post) {

        $this->connection->connect();

        // Informazioni relative all'entità DEVICE
        $device_brand = $post["device"]["brand"];
        $device_model = $post["device"]["model"];
        $device_owner_name = $post["device"]["owner_name"];
        $device_owner_surname = $post["device"]["owner_surname"];
        $device_type = $post["device"]["type"];
        if(strlen($post["device"]["notes"]) > 1) {
            $device_notes = $post["device"]["notes"];
        } else {
            $device_notes = "NULL";
        }

        // Informazioni relative all'entità LOG
        $log_report_number = $post["report_number"];
        $log_acquisition_place = $post["acquisition_place"];
        if(strlen($post["notes"]) > 1) {
            $log_acquisition_notes = $post["notes"];
        } else {
            $log_acquisition_notes = "NULL";
        }

        // Informazioni relative all'entità DIGITAL INVESTIGATOR
        $digital_investigator_id = $post["digital_investigator"]["id"];

        // Informazioni relative all'entità MEASUREMENT
        $measurements = $post["measurements"];

        $query = "INSERT INTO device (
                brand,
                model,
                owner_name,
                owner_surname,
                type,
                notes
			) VALUES(
				'$device_brand',
				'$device_model',
				'$device_owner_name',
				'$device_owner_surname',
				'$device_type',
				'$device_notes'
		    )";

		$result = $this->connection->execSingleQuery($query);

        // Query per ottenere l'id del drone appena creato
        $result = $this->connection->execSingleQuery("SELECT MAX(id) as max_id FROM device");
		$device_id = mysqli_fetch_array($result);
		$device_id = $device_id["max_id"];

        $query = "INSERT INTO log (
                report_number,
                acquisition_place,
                notes,
                id_device
			) VALUES(
				$log_report_number,
				'$log_acquisition_place',
                '$log_acquisition_notes',
                $device_id
		    )";

        $result = $this->connection->execSingleQuery($query);

        // Query per ottenere l'id del log appena creato
        $result = $this->connection->execSingleQuery("SELECT MAX(id) as max_id FROM log");
        $log_id = mysqli_fetch_array($result);
        $log_id = $log_id["max_id"];

        $query = "INSERT INTO log_investigator (
                id_investigator,
                id_log
			) VALUES(
				$digital_investigator_id,
                $log_id
		    )";

        $result = $this->connection->execSingleQuery($query);

        if(count($measurements) > 0) {

			for($i = 0; $i < count($measurements); $i++) {

                $measurement = $measurements["measurement_".$i];
                $query = "INSERT INTO measurement (
                        timestamp,
                        notes,
                        id_log
        			) VALUES (
                        '".$measurement["timestamp"]."',
                        '".$measurement["notes"]."',
                        $log_id
                    )";

                $result = $this->connection->execSingleQuery($query);

                // Query per ottenere l'id del measurement appena creato
                $result = $this->connection->execSingleQuery("SELECT MAX(id) as max_id FROM measurement");
                $measurement_id = mysqli_fetch_array($result);
                $measurement_id = $measurement_id["max_id"];

                $sensors = $measurement["sensors"];

                foreach ($sensors as $sensor_name=>$sensor_value) {

                    if (strcasecmp($sensor_name, "battery") == 0) {
                        //CHECK QUI come faccio a vedere cosa restituisce? In teoria si prende null sempre
                        $voltage = $sensor_value["voltage"];
                        $percentage = $sensor_value["percentage"];

                        $query = "INSERT INTO battery (
                                voltage,
                                percentage,
                                id_measurement
                            ) VALUES (
                                $voltage,
                                $percentage,
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }

                    if (strcasecmp($sensor_name, "barometer") == 0) {
                        $altitude = $sensor_value["altitude"];
                        $query = "INSERT INTO barometer (
                                altitude,
                                id_measurement
                            ) VALUES (
                                $altitude,
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }

                    if (strcasecmp($sensor_name, "gps") == 0) {
                        $satellites_number = $sensor_value["satellites"];
                        $coordinates = $sensor_value["coordinates"];
                        $query = "INSERT INTO gps (
                                satellites_number,
                                coordinates,
                                id_measurement
                            ) VALUES (
                                $satellites_number,
                                '".$coordinates."',
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }

                    if (strcasecmp($sensor_name, "photo") == 0) {
                        $path = $sensor_value["path"];
                        $size = $sensor_value["size"];
                        $query = "INSERT INTO photo (
                                path,
                                size,
                                id_measurement
                            ) VALUES (
                                '".$path."',
                                $size,
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }

                    if (strcasecmp($sensor_name, "video") == 0) {
                        $length = $sensor_value["length"];
                        $path = $sensor_value["path"];
                        $size = $sensor_value["size"];
                        $query = "INSERT INTO video (
                                length,
                                path,
                                size,
                                id_measurement
                            ) VALUES (
                                $length,
                                '".$path."',
                                $size,
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }

                    if(strcasecmp($sensor_name, "accelerometer") == 0) {
                        $acceleration = $sensor_value["acceleration"];
                        $query = "INSERT INTO accelerometer (
                                acceleration,
                                id_measurement
                            ) VALUES (
                                $acceleration,
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }

                    if(strcasecmp($sensor_name, "brake_sensor") == 0) {
                        $pressure = $sensor_value["pressure"];
                        $query = "INSERT INTO brake_sensor (
                                pressure,
                                id_measurement
                            ) VALUES (
                                $pressure,
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }

                    if(strcasecmp($sensor_name, "gyroscope") == 0) {
                        $rotation = $sensor_value["rotation"];
                        $query = "INSERT INTO gyroscope (
                                rotation,
                                id_measurement
                            ) VALUES (
                                $rotation,
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }

                    if(strcasecmp($sensor_name, "hrm") == 0) {
                        $heart_rate = $sensor_value["heart_rate"];
                        $query = "INSERT INTO hrm (
                                heart_rate,
                                id_measurement
                            ) VALUES (
                                $heart_rate,
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }

                    if(strcasecmp($sensor_name, "potentiometer") == 0) {
                        $accelerator_angle = $sensor_value["accelerator_angle"];
                        $query = "INSERT INTO potentiometer (
                                accelerator_angle,
                                id_measurement
                            ) VALUES (
                                $accelerator_angle,
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }

                    if(strcasecmp($sensor_name, "tachometer") == 0) {
                        $rpm = $sensor_value["rpm"];
                        $query = "INSERT INTO tachometer (
                                rpm,
                                id_measurement
                            ) VALUES (
                                $rpm,
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }

                    if(strcasecmp($sensor_name, "wss") == 0) {
                        $speed = $sensor_value["speed"];
                        $query = "INSERT INTO wss (
                                speed,
                                id_measurement
                            ) VALUES (
                                $speed,
                                $measurement_id
                            )";
                        $result = $this->connection->execSingleQuery($query);
                    }
                }
            }
        }

        $this->connection->disconnect();
        return json_encode("Log successfully imported!");
    }

}

?>
