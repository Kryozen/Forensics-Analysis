<?php

date_default_timezone_set('Europe/Berlin');

include "ConnectionDB.php";
include "Utilities.php";
include "DigitalInvestigator.php";
include "Log.php";
include "Device.php";
include "Measurement.php";
include "Battery.php";
include "Barometer.php";
include "GPS.php";
include "Photo.php";
include "Video.php";
include "Accelerometer.php";
include "Wss.php";
include "Hrm.php";
include "BrakeSensor.php";
include "Potentiometer.php";
include "Gyroscope.php";
include "Tachometer.php";

//include "saveLog.php";

// Per fare debug usare questa linea di codice
// error_log(print_r(variabile da stampare, true));

$class = new $_POST['class']();
$class->__construct();
echo $class->{$_POST['method']}($_POST);

?>
