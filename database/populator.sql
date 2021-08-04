USE df_framework;

-- Clearing the database

DELETE FROM accelerometer;
DELETE FROM barometer;
DELETE FROM battery;
DELETE FROM brake_sensor;
DELETE FROM device;
DELETE FROM digital_investigator;
DELETE FROM gps;
DELETE FROM gyroscope;
DELETE FROM hrm;
DELETE FROM log;
DELETE FROM log_investigator;
DELETE FROM measurement;
DELETE FROM photo;
DELETE FROM potentiometer;
DELETE FROM tachometer;
DELETE FROM video;
DELETE FROM wss;



ALTER TABLE accelerometer AUTO_INCREMENT = 1;
ALTER TABLE barometer AUTO_INCREMENT = 1;
ALTER TABLE battery AUTO_INCREMENT = 1;
ALTER TABLE brake_sensor AUTO_INCREMENT = 1;
ALTER TABLE device AUTO_INCREMENT = 1;
ALTER TABLE digital_investigator AUTO_INCREMENT = 1;
ALTER TABLE gps AUTO_INCREMENT = 1;
ALTER TABLE gyroscope AUTO_INCREMENT = 1;
ALTER TABLE hrm AUTO_INCREMENT = 1;
ALTER TABLE log AUTO_INCREMENT = 1;
ALTER TABLE measurement AUTO_INCREMENT = 1;
ALTER TABLE photo AUTO_INCREMENT = 1;
ALTER TABLE potentiometer AUTO_INCREMENT = 1;
ALTER TABLE tachometer AUTO_INCREMENT = 1;
ALTER TABLE video AUTO_INCREMENT = 1;
ALTER TABLE wss AUTO_INCREMENT = 1;

-- Adding devices
INSERT INTO device(brand, model, owner_name, owner_surname, type, notes) VALUES('Subaru', 'Impreza', null, null, 'Smart vehicle', 'Unknown owner'), ('Huawei', 'Watch GT', null, null, 'Wearable', 'Unknown owner');


-- Adding Digital investigators
INSERT INTO digital_investigator(name, surname, agency, category, specialization) VALUES('Simone', 'Masullo', 'Ministero della Giustizia', 'Investigatore Forense', 'Digitale'), ('Orazio', 'Cesarano', 'Ministero della Giustizia', 'Investigatore Forense', 'Digitale');


-- Adding Smart vehicle sensors
INSERT INTO log(report_number, acquisition_place, notes, id_device) VALUES(1, 'Italia-Fisciano-Via Renato Maria Caccioppoli', null, 1);
INSERT INTO log_investigator(id_investigator, id_log) VALUES(2,1);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:00', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '695', 1);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 1);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 1);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 1);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 1);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:00', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '703', 2);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 2);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 2);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 2);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 2);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:00', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '691', 3);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 3);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 3);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 3);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 3);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:00', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '699', 4);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 4);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 4);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 4);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 4);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:00', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '701', 5);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 5);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 5);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 5);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 5);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:00', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '698', 6);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 6);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 6);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 6);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 6);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:00', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '706', 7);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 7);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 7);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 7);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 7);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:00', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '713', 8);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 8);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 8);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 8);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 8);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:00', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '715', 9);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 9);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 9);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 9);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 9);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:00', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '711', 10);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 10);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 10);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 10);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 10);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:01', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '716', 11);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 11);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 11);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 11);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 11);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:01', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '714', 12);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 12);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 12);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 12);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 12);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:01', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '712', 13);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 13);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 13);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 13);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 13);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:01', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '709', 14);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 14);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 14);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 14);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 14);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:01', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '698', 15);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 15);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 15);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 15);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 15);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:01', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '698', 16);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 16);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 16);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 16);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 16);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:01', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '704', 17);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 17);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 17);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 17);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 17);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:01', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '703', 18);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 18);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 18);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 18);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 18);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:01', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '714', 19);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 19);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 19);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 19);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 19);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:01', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '714', 20);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 20);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 20);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 20);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 20);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:02', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '728', 21);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 21);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 21);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 21);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 21);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:02', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '719', 22);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 22);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 22);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 22);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 22);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:02', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '723', 23);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 23);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 23);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 23);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 23);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:02', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '726', 24);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 24);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.9', 24);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 24);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 24);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:02', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '726', 25);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 25);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.5', 25);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 25);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 25);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:02', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '733', 26);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 26);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.3', 26);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 26);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 26);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:02', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '725', 27);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 27);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.1', 27);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 27);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 27);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:02', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '729', 28);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 28);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.3', 28);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 28);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 28);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:02', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '746', 29);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 29);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.5', 29);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 29);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 29);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:02', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '758', 30);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 30);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.8', 30);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 30);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 30);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:03', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '783', 31);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 31);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.2', 31);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 31);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 31);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:03', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '829', 32);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 32);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.1', 32);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 32);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 32);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:03', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '868', 33);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 33);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '17.4', 33);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 33);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 33);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:03', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '947', 34);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 34);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '17.6', 34);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 34);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 34);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:03', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1008', 35);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 35);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '17.6', 35);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 35);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 35);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:03', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1100', 36);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 36);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '16.8', 36);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 36);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 36);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:03', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1256', 37);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 37);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '16.4', 37);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 37);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 37);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:03', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1383', 38);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 38);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '16.3', 38);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 38);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 38);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:03', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1502', 39);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 39);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '16', 39);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 39);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 39);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:03', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1652', 40);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '0', 40);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '16.2', 40);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 40);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 40);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:04', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1751', 41);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '1', 41);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '15.9', 41);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 41);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 41);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:04', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1820', 42);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '2', 42);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.1', 42);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 42);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 42);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:04', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1812', 43);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '3', 43);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.6', 43);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 43);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 43);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:04', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1785', 44);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '4', 44);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.6', 44);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 44);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 44);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:04', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1734', 45);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '4', 45);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.5', 45);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 45);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 45);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:04', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1698', 46);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '5', 46);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.4', 46);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 46);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 46);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:04', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1657', 47);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '6', 47);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.5', 47);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 47);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 47);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:04', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1607', 48);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '7', 48);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.4', 48);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 48);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 48);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:04', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1587', 49);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '8', 49);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.2', 49);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 49);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 49);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:04', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1578', 50);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '9', 50);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.5', 50);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 50);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 50);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:05', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1569', 51);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '9', 51);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13', 51);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 51);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 51);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:05', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1564', 52);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '10', 52);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.4', 52);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 52);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 52);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:05', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1553', 53);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '11', 53);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.5', 53);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 53);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 53);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:05', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1503', 54);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 54);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.4', 54);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 54);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 54);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:05', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1502', 55);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 55);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.3', 55);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 55);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 55);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:05', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1633', 56);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 56);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.7', 56);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 56);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 56);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:05', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1697', 57);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 57);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.9', 57);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 57);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 57);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:05', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1743', 58);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 58);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11', 58);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 58);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 58);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:05', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1708', 59);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 59);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.3', 59);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 59);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 59);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:05', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1719', 60);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 60);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.5', 60);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 60);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 60);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:06', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1786', 61);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 61);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.7', 61);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 61);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 61);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:06', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1934', 62);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 62);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.2', 62);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 62);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 62);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:06', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1947', 63);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 63);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.9', 63);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 63);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 63);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:06', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1907', 64);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 64);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11', 64);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 64);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 64);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:06', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1945', 65);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 65);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.8', 65);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 65);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 65);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:06', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2101', 66);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 66);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.9', 66);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 66);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 66);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:06', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2133', 67);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 67);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.6', 67);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 67);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 67);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:06', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2125', 68);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 68);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 68);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 68);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 68);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:06', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2130', 69);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 69);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 69);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 69);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 69);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:06', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2172', 70);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 70);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 70);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 70);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 70);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:07', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2186', 71);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 71);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 71);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 71);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 71);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:07', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2186', 72);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 72);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 72);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 72);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 72);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:07', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2132', 73);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 73);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 73);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 73);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 73);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:07', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2038', 74);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 74);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 74);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 74);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 74);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:07', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1987', 75);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 75);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 75);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 75);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 75);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:07', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1870', 76);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 76);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 76);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 76);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 76);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:07', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1796', 77);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 77);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 77);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 77);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 77);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:07', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1723', 78);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 78);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 78);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 78);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 78);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:07', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1664', 79);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 79);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 79);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 79);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 79);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:07', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1509', 80);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 80);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 80);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 80);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 80);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:08', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1431', 81);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 81);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 81);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 81);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 81);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:08', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1344', 82);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 82);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 82);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 82);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 82);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:08', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1249', 83);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 83);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 83);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 83);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 83);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:08', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1183', 84);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 84);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 84);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 84);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 84);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:08', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1048', 85);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 85);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 85);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 85);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 85);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:08', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1017', 86);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 86);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 86);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 86);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 86);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:08', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1002', 87);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 87);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 87);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 87);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 87);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:08', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '997', 88);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 88);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 88);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 88);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 88);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:08', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1051', 89);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 89);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 89);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 89);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 89);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:08', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1102', 90);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 90);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 90);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 90);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 90);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:09', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1130', 91);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 91);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 91);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 91);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 91);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:09', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1083', 92);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 92);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 92);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 92);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 92);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:09', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1021', 93);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 93);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 93);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 93);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 93);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:09', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '995', 94);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 94);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 94);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 94);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 94);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:09', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '993', 95);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 95);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 95);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 95);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 95);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:09', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1010', 96);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 96);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 96);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 96);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 96);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:09', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '982', 97);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 97);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 97);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 97);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 97);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:09', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '973', 98);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 98);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '1.3', 98);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 98);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 98);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:09', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '968', 99);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 99);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '2.9', 99);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 99);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 99);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:09', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '949', 100);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 100);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.1', 100);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 100);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 100);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:10', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '929', 101);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 101);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.6', 101);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 101);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 101);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:10', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '932', 102);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 102);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.1', 102);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 102);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 102);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:10', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '932', 103);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 103);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5.5', 103);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 103);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 103);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:10', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '920', 104);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 104);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.9', 104);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 104);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 104);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:10', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '916', 105);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '11', 105);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.6', 105);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 105);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 105);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:10', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '906', 106);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '11', 106);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11', 106);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 106);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 106);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:10', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '885', 107);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '11', 107);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.5', 107);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 107);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 107);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:10', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '876', 108);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '11', 108);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.1', 108);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 108);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 108);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:10', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '891', 109);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '11', 109);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.3', 109);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 109);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 109);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:10', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '899', 110);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '11', 110);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.2', 110);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 110);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 110);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:11', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '892', 111);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '11', 111);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.1', 111);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 111);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 111);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:11', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '913', 112);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '11', 112);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.6', 112);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 112);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 112);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:11', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '935', 113);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 113);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.7', 113);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 113);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 113);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:11', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '939', 114);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 114);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.6', 114);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 114);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 114);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:11', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '974', 115);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 115);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.7', 115);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 115);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 115);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:11', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '995', 116);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '12', 116);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.5', 116);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 116);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 116);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:11', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '997', 117);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 117);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.5', 117);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 117);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 117);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:11', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1026', 118);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 118);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.3', 118);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 118);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 118);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:11', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1056', 119);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '13', 119);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.3', 119);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 119);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 119);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:11', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1067', 120);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 120);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.9', 120);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 120);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 120);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:12', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1113', 121);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 121);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.1', 121);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 121);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 121);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:12', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1113', 122);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 122);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.5', 122);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 122);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 122);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:12', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1115', 123);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '14', 123);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.7', 123);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 123);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 123);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:12', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1161', 124);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 124);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.5', 124);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 124);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 124);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:12', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1168', 125);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 125);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.2', 125);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 125);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 125);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:12', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1169', 126);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 126);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.1', 126);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 126);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 126);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:12', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1197', 127);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 127);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.7', 127);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 127);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 127);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:12', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1209', 128);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 128);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.6', 128);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 128);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 128);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:12', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1200', 129);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 129);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.8', 129);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 129);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 129);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:12', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1213', 130);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 130);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.9', 130);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 130);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 130);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:13', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1225', 131);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 131);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.4', 131);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 131);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 131);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:13', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1224', 132);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 132);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.6', 132);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 132);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 132);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:13', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1219', 133);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 133);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.8', 133);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 133);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 133);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:13', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1226', 134);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 134);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.9', 134);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 134);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 134);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:13', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1231', 135);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 135);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.6', 135);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 135);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 135);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:13', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1231', 136);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 136);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.9', 136);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 136);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 136);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:13', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1234', 137);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 137);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4', 137);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 137);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 137);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:13', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1234', 138);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 138);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.1', 138);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 138);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 138);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:13', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1234', 139);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 139);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.4', 139);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 139);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 139);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:13', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1235', 140);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 140);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.6', 140);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 140);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 140);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:14', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1230', 141);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 141);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.9', 141);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 141);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 141);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:14', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1234', 142);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 142);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5.6', 142);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 142);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 142);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:14', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1234', 143);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 143);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5.6', 143);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 143);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 143);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:14', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1225', 144);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 144);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5.8', 144);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 144);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 144);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:14', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1223', 145);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 145);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.3', 145);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 145);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 145);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:14', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1220', 146);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 146);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.5', 146);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 146);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 146);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:14', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1227', 147);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 147);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.1', 147);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 147);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 147);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:14', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1213', 148);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 148);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.6', 148);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 148);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 148);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:14', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1212', 149);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 149);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.2', 149);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 149);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 149);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:14', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1216', 150);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 150);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.5', 150);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 150);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 150);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:15', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1217', 151);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 151);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.2', 151);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 151);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 151);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:15', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1213', 152);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 152);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.4', 152);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 152);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 152);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:15', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1206', 153);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 153);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.2', 153);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 153);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 153);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:15', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1223', 154);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 154);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.6', 154);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 154);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 154);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:15', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1222', 155);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 155);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.4', 155);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 155);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 155);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:15', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1221', 156);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 156);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.8', 156);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 156);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 156);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:15', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1221', 157);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 157);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.4', 157);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 157);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 157);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:15', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1231', 158);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 158);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.9', 158);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 158);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 158);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:15', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1231', 159);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 159);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.6', 159);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 159);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 159);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:15', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1228', 160);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 160);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.6', 160);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 160);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 160);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:16', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1222', 161);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 161);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.9', 161);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 161);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 161);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:16', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1221', 162);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 162);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.4', 162);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 162);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 162);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:16', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1226', 163);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 163);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.4', 163);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 163);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 163);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:16', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1231', 164);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 164);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.4', 164);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 164);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 164);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:16', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1222', 165);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '15', 165);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.6', 165);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 165);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 165);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:16', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1224', 166);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 166);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.3', 166);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 166);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 166);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:16', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1261', 167);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 167);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.1', 167);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 167);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 167);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:16', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1275', 168);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 168);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.2', 168);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 168);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 168);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:16', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1276', 169);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 169);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.7', 169);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 169);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 169);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:16', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1310', 170);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 170);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.7', 170);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 170);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 170);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:17', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1332', 171);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 171);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.7', 171);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 171);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 171);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:17', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1352', 172);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 172);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.7', 172);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 172);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 172);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:17', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1377', 173);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 173);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.4', 173);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 173);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 173);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:17', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1391', 174);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 174);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.5', 174);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 174);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 174);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:17', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1414', 175);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 175);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.9', 175);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 175);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 175);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:17', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1438', 176);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 176);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.5', 176);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 176);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 176);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:17', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1485', 177);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 177);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.5', 177);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 177);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 177);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:17', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1510', 178);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 178);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.5', 178);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 178);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 178);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:17', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1512', 179);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 179);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.8', 179);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 179);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 179);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:17', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1565', 180);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 180);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.2', 180);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 180);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 180);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:18', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1613', 181);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 181);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.9', 181);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 181);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 181);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:18', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1613', 182);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 182);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.9', 182);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 182);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 182);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:18', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1650', 183);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 183);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.2', 183);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 183);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 183);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:18', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1703', 184);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 184);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.2', 184);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 184);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 184);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:18', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1719', 185);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 185);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.8', 185);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 185);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 185);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:18', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1740', 186);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 186);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13', 186);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 186);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 186);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:18', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1811', 187);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 187);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.2', 187);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 187);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 187);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:18', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1814', 188);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 188);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.4', 188);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 188);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 188);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:18', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1855', 189);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 189);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13', 189);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 189);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 189);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:18', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1895', 190);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 190);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.3', 190);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 190);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 190);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:19', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1914', 191);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 191);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.8', 191);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 191);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 191);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:19', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1914', 192);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 192);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 192);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 192);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 192);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:19', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1930', 193);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 193);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 193);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 193);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 193);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:19', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1948', 194);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 194);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 194);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 194);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 194);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:19', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1956', 195);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 195);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 195);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 195);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 195);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:19', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1998', 196);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 196);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 196);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 196);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 196);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:19', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2009', 197);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 197);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 197);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 197);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 197);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:19', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2007', 198);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 198);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 198);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 198);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 198);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:19', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1972', 199);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 199);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 199);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 199);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 199);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:19', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1864', 200);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 200);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 200);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 200);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 200);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:20', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1829', 201);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 201);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 201);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 201);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 201);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:20', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1785', 202);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 202);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '2.4', 202);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 202);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 202);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:20', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1738', 203);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 203);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.3', 203);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 203);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 203);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:20', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1644', 204);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 204);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.6', 204);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 204);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 204);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:20', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1532', 205);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 205);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.2', 205);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 205);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 205);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:20', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1343', 206);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 206);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.7', 206);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 206);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 206);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:20', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1392', 207);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 207);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.1', 207);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 207);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 207);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:20', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1404', 208);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 208);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.7', 208);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 208);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 208);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:20', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1385', 209);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 209);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.7', 209);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 209);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 209);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:20', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1444', 210);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 210);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.7', 210);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 210);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 210);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:21', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1414', 211);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '26', 211);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.8', 211);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 211);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 211);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:21', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1408', 212);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '26', 212);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '15.3', 212);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 212);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 212);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:21', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1461', 213);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '26', 213);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '15.3', 213);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 213);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 213);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:21', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1458', 214);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '27', 214);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '15.5', 214);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 214);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 214);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:21', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1480', 215);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '27', 215);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '17.6', 215);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 215);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 215);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:21', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1504', 216);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '27', 216);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '19.9', 216);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 216);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 216);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:21', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1508', 217);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '27', 217);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '19.3', 217);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 217);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 217);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:21', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1519', 218);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '28', 218);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '19.2', 218);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 218);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 218);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:21', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1591', 219);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '28', 219);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '18.3', 219);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 219);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 219);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:21', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1572', 220);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '29', 220);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '18.9', 220);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 220);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 220);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:22', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1598', 221);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '29', 221);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '18.7', 221);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 221);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 221);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:22', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1636', 222);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '29', 222);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '18.5', 222);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 222);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 222);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:22', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1645', 223);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '30', 223);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '18.4', 223);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 223);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 223);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:22', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1682', 224);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '30', 224);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '18.4', 224);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 224);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 224);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:22', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1700', 225);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '31', 225);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '18.5', 225);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 225);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 225);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:22', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1712', 226);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '31', 226);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '18.2', 226);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 226);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 226);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:22', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1736', 227);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '32', 227);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '17.8', 227);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 227);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 227);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:22', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1755', 228);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '32', 228);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '18.1', 228);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 228);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 228);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:22', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1776', 229);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '32', 229);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '18.1', 229);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 229);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 229);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:22', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1805', 230);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '33', 230);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '18', 230);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 230);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 230);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:23', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1829', 231);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '33', 231);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '16.8', 231);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 231);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 231);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:23', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1846', 232);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '33', 232);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '17.3', 232);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 232);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 232);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:23', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1865', 233);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '34', 233);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '16.7', 233);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 233);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 233);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:23', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1893', 234);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 234);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '16.9', 234);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 234);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 234);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:23', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1919', 235);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 235);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '16.8', 235);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 235);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 235);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:23', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1935', 236);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 236);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '16.7', 236);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 236);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 236);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:23', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1938', 237);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 237);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '16.8', 237);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 237);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 237);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:23', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1985', 238);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 238);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '17', 238);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 238);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 238);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:23', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1992', 239);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 239);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9', 239);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 239);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 239);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:23', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2029', 240);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 240);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 240);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 240);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 240);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:24', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2023', 241);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 241);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 241);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 241);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 241);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:24', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2043', 242);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 242);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 242);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 242);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 242);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:24', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2076', 243);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 243);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 243);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 243);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 243);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:24', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2129', 244);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 244);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 244);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 244);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 244);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:24', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2112', 245);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 245);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 245);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 245);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 245);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:24', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2054', 246);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 246);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 246);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 246);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 246);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:24', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '2021', 247);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 247);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 247);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 247);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 247);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:24', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1803', 248);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 248);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 248);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 248);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 248);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:24', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1666', 249);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 249);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 249);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 249);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 249);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:24', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1479', 250);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 250);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0.7', 250);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 250);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 250);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:25', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1509', 251);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 251);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.1', 251);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 251);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 251);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:25', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1546', 252);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 252);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.2', 252);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 252);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 252);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:25', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1583', 253);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 253);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10', 253);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 253);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 253);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:25', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1571', 254);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 254);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.3', 254);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 254);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 254);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:25', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1566', 255);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 255);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.2', 255);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 255);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 255);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:25', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1577', 256);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 256);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.2', 256);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 256);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 256);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:25', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1625', 257);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 257);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.2', 257);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 257);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 257);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:25', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1568', 258);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 258);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.9', 258);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 258);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 258);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:25', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1539', 259);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 259);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10', 259);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 259);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 259);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:25', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1584', 260);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 260);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.9', 260);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 260);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 260);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:26', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1568', 261);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 261);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.2', 261);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 261);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 261);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:26', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1587', 262);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 262);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.3', 262);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 262);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 262);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:26', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1566', 263);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 263);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.7', 263);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 263);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 263);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:26', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1581', 264);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 264);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.9', 264);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 264);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 264);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:26', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1571', 265);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 265);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.3', 265);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 265);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 265);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:26', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1588', 266);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 266);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.2', 266);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 266);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 266);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:26', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1579', 267);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 267);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.3', 267);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 267);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 267);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:26', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1577', 268);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 268);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.2', 268);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 268);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 268);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:26', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1583', 269);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 269);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.3', 269);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 269);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 269);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:26', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1588', 270);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 270);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.1', 270);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 270);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 270);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:27', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1592', 271);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 271);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.6', 271);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 271);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 271);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:27', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1592', 272);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 272);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.6', 272);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 272);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 272);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:27', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1604', 273);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 273);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.6', 273);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 273);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 273);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:27', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1589', 274);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 274);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9', 274);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 274);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 274);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:27', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1594', 275);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 275);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.6', 275);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 275);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 275);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:27', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1603', 276);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 276);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.4', 276);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 276);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 276);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:27', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1609', 277);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 277);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.6', 277);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 277);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 277);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:27', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1609', 278);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 278);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.3', 278);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 278);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 278);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:27', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1604', 279);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 279);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.2', 279);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 279);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 279);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:27', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1610', 280);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 280);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.3', 280);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 280);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 280);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:28', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1599', 281);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 281);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8', 281);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 281);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 281);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:28', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1621', 282);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 282);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.8', 282);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 282);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 282);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:28', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1592', 283);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 283);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.4', 283);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 283);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 283);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:28', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1609', 284);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 284);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.6', 284);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 284);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 284);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:28', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1606', 285);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 285);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.2', 285);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 285);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 285);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:28', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1603', 286);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 286);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5.8', 286);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 286);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 286);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:28', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1605', 287);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 287);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5.6', 287);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 287);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 287);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:28', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1605', 288);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 288);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.3', 288);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 288);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 288);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:28', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1592', 289);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 289);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.9', 289);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 289);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 289);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:28', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1581', 290);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 290);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5.1', 290);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 290);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 290);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:29', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1566', 291);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 291);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5.2', 291);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 291);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 291);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:29', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1569', 292);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 292);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.8', 292);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 292);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 292);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:29', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1592', 293);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 293);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.8', 293);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 293);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 293);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:29', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1587', 294);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 294);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.9', 294);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 294);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 294);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:29', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1555', 295);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '37', 295);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.4', 295);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 295);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 295);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:29', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1568', 296);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 296);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.6', 296);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 296);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 296);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:29', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1556', 297);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 297);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.7', 297);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 297);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 297);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:29', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1559', 298);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 298);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.6', 298);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 298);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 298);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:29', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1547', 299);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 299);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.9', 299);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 299);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 299);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:29', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1556', 300);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 300);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.6', 300);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 300);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 300);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:30', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1539', 301);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 301);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.5', 301);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 301);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 301);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:30', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1548', 302);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 302);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.9', 302);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 302);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 302);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:30', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1526', 303);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '36', 303);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.1', 303);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 303);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 303);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:30', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1545', 304);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 304);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '1.8', 304);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 304);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 304);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:30', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1517', 305);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 305);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.1', 305);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 305);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 305);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:30', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1525', 306);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 306);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '1.8', 306);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 306);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 306);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:30', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1513', 307);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 307);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '2.5', 307);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 307);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 307);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:30', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1499', 308);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 308);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '2.6', 308);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 308);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 308);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:30', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1515', 309);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 309);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '1.7', 309);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 309);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 309);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:30', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1492', 310);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 310);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '2.2', 310);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 310);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 310);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:31', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1497', 311);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 311);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '1.7', 311);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 311);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 311);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:31', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1500', 312);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '34', 312);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '1.9', 312);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 312);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 312);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:31', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1485', 313);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '35', 313);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '2.1', 313);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 313);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 313);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:31', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1490', 314);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '34', 314);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '1.2', 314);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 314);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 314);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:31', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1485', 315);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '34', 315);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 315);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 315);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 315);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:31', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1475', 316);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '34', 316);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 316);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 316);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 316);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:31', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1480', 317);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '34', 317);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 317);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 317);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 317);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:31', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1469', 318);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '34', 318);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 318);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 318);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 318);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:31', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1473', 319);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '34', 319);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 319);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 319);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 319);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:31', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1443', 320);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '34', 320);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 320);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 320);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 320);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:32', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1453', 321);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '34', 321);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 321);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 321);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 321);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:32', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1456', 322);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '33', 322);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 322);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 322);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 322);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:32', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1433', 323);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '33', 323);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 323);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 323);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 323);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:32', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1432', 324);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '33', 324);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 324);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 324);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 324);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:32', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1424', 325);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '33', 325);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 325);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 325);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 325);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:32', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1412', 326);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '33', 326);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 326);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 326);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 326);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:32', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1429', 327);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '33', 327);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 327);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 327);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 327);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:32', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1400', 328);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '33', 328);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 328);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 328);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 328);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:32', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1410', 329);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '32', 329);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 329);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 329);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 329);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:32', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1393', 330);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '32', 330);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 330);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 330);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 330);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:33', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1380', 331);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '32', 331);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 331);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 331);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 331);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:33', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1382', 332);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '32', 332);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 332);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 332);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 332);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:33', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1365', 333);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '32', 333);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 333);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 333);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 333);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:33', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1367', 334);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '32', 334);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 334);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 334);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 334);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:33', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1355', 335);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '32', 335);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 335);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 335);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 335);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:33', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1354', 336);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '31', 336);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 336);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 336);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 336);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:33', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1341', 337);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '31', 337);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 337);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 337);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 337);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:33', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1332', 338);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '31', 338);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 338);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 338);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 338);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:33', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1317', 339);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '31', 339);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 339);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 339);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 339);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:33', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1286', 340);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '30', 340);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 340);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 340);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 340);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:34', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1275', 341);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '30', 341);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 341);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 341);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 341);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:34', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1207', 342);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '29', 342);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 342);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 342);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 342);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:34', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1116', 343);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '28', 343);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 343);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 343);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 343);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:34', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '978', 344);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '28', 344);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 344);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 344);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 344);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:34', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '900', 345);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '27', 345);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 345);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 345);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 345);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:34', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '789', 346);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '27', 346);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 346);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 346);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 346);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:34', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '746', 347);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '26', 347);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 347);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 347);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 347);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:34', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '734', 348);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '26', 348);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 348);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 348);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 348);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:34', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '753', 349);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '25', 349);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 349);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 349);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 349);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:34', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '789', 350);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 350);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 350);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 350);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 350);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:35', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '832', 351);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 351);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 351);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 351);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 351);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:35', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '871', 352);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 352);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 352);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 352);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 352);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:35', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '906', 353);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 353);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 353);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 353);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 353);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:35', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '944', 354);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 354);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 354);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 354);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 354);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:35', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1009', 355);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 355);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 355);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 355);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 355);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:35', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1039', 356);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 356);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 356);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 356);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 356);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:35', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1096', 357);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 357);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 357);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 357);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 357);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:35', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1094', 358);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 358);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 358);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 358);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 358);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:35', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1059', 359);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 359);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 359);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 359);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 359);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:35', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1063', 360);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 360);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 360);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 360);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 360);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:36', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1046', 361);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 361);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 361);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 361);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 361);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:36', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1047', 362);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 362);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 362);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 362);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 362);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:36', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1028', 363);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 363);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 363);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 363);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 363);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:36', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1019', 364);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 364);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 364);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 364);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 364);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:36', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1024', 365);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 365);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 365);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 365);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 365);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:36', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1010', 366);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 366);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 366);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 366);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 366);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:36', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1014', 367);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 367);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 367);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 367);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 367);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:36', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1000', 368);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 368);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 368);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 368);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 368);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:36', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '989', 369);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 369);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 369);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 369);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 369);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:36', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '999', 370);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 370);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 370);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 370);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 370);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:37', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '945', 371);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 371);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 371);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 371);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 371);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:37', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '950', 372);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 372);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 372);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 372);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 372);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:37', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '938', 373);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 373);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0.9', 373);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 373);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 373);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:37', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '927', 374);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 374);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.9', 374);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 374);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 374);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:37', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '902', 375);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 375);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9', 375);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 375);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 375);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:37', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '885', 376);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 376);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.7', 376);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 376);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 376);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:37', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '906', 377);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 377);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.2', 377);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 377);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 377);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:37', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '946', 378);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 378);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.6', 378);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 378);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 378);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:37', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '973', 379);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '16', 379);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.6', 379);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 379);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 379);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:37', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '938', 380);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 380);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.1', 380);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 380);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 380);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:38', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '956', 381);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 381);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.1', 381);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 381);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 381);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:38', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '948', 382);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 382);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11', 382);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 382);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 382);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:38', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '943', 383);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 383);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.2', 383);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 383);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 383);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:38', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '983', 384);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 384);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.3', 384);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 384);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 384);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:38', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '981', 385);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '17', 385);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.6', 385);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 385);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 385);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:38', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '957', 386);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 386);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.9', 386);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 386);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 386);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:38', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '995', 387);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 387);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.3', 387);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 387);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 387);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:38', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1004', 388);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 388);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.6', 388);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 388);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 388);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:38', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1005', 389);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 389);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.3', 389);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 389);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 389);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:38', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1023', 390);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 390);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13', 390);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 390);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 390);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:39', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1032', 391);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 391);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.4', 391);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 391);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 391);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:39', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1045', 392);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 392);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.9', 392);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 392);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 392);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:39', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1065', 393);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 393);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.3', 393);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 393);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 393);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:39', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1087', 394);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 394);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.8', 394);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 394);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 394);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:39', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1104', 395);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 395);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.9', 395);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 395);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 395);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:39', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1115', 396);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 396);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11', 396);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 396);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 396);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:39', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1125', 397);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 397);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.3', 397);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 397);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 397);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:39', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1144', 398);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 398);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.8', 398);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 398);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 398);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:39', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1156', 399);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 399);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.3', 399);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 399);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 399);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:39', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1177', 400);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 400);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.7', 400);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 400);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 400);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:40', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1198', 401);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 401);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '10.7', 401);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 401);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 401);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:40', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1206', 402);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 402);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9', 402);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 402);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 402);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:40', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1219', 403);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 403);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9', 403);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 403);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 403);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:40', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1228', 404);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 404);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.3', 404);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 404);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 404);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:40', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1235', 405);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 405);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8', 405);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 405);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 405);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:40', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1248', 406);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 406);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.9', 406);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 406);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 406);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:40', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1253', 407);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 407);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.7', 407);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 407);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 407);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:40', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1263', 408);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 408);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.7', 408);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 408);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 408);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:40', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1278', 409);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 409);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.7', 409);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 409);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 409);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:40', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1280', 410);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 410);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.5', 410);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 410);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 410);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:41', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1289', 411);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 411);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.4', 411);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 411);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 411);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:41', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1296', 412);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 412);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.6', 412);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 412);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 412);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:41', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1300', 413);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 413);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.1', 413);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 413);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 413);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:41', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1300', 414);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 414);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '6.1', 414);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 414);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 414);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:41', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1305', 415);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 415);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5.2', 415);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 415);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 415);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:41', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1316', 416);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 416);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.6', 416);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 416);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 416);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:41', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1314', 417);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 417);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.6', 417);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 417);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 417);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:41', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1310', 418);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 418);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.7', 418);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 418);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 418);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:41', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1323', 419);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 419);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.6', 419);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 419);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 419);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:41', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1328', 420);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 420);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.8', 420);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 420);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 420);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:42', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1319', 421);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 421);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.5', 421);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 421);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 421);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:42', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1328', 422);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 422);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.9', 422);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 422);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 422);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:42', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1330', 423);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 423);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.7', 423);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 423);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 423);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:42', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1320', 424);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 424);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5', 424);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 424);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 424);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:42', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1324', 425);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 425);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5.2', 425);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 425);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 425);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:42', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1321', 426);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 426);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.6', 426);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 426);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 426);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:42', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1322', 427);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 427);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.8', 427);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 427);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 427);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:42', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1312', 428);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 428);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5', 428);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 428);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 428);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:42', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1307', 429);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 429);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5', 429);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 429);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 429);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:42', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1311', 430);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 430);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.7', 430);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 430);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 430);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:43', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1326', 431);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 431);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.7', 431);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 431);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 431);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:43', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1329', 432);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 432);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.9', 432);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 432);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 432);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:43', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1333', 433);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 433);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '3.6', 433);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 433);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 433);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:43', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1323', 434);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 434);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '2.9', 434);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 434);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 434);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:43', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1320', 435);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 435);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 435);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 435);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 435);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:43', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1304', 436);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 436);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '1.1', 436);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 436);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 436);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:43', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1294', 437);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 437);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0.8', 437);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 437);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 437);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:43', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1305', 438);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 438);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 438);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 438);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 438);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:43', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1332', 439);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 439);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 439);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 439);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 439);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:43', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1323', 440);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 440);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 440);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 440);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 440);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:44', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1314', 441);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 441);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 441);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 441);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 441);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:44', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1300', 442);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 442);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 442);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 442);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 442);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:44', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1292', 443);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 443);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 443);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 443);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 443);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:44', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1305', 444);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 444);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 444);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 444);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 444);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:44', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1295', 445);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 445);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 445);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 445);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 445);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:44', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1291', 446);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '24', 446);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 446);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 446);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 446);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:44', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1290', 447);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 447);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 447);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 447);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 447);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:44', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1281', 448);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 448);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 448);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 448);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 448);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:44', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1285', 449);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 449);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 449);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 449);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 449);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:44', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1288', 450);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 450);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 450);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 450);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 450);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:45', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1265', 451);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 451);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 451);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 451);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 451);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:45', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1262', 452);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 452);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 452);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 452);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 452);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:45', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1247', 453);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 453);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 453);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 453);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 453);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:45', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1239', 454);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 454);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 454);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 454);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 454);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:45', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1230', 455);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '23', 455);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 455);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 455);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 455);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:45', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1225', 456);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 456);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 456);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 456);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 456);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:45', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1217', 457);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 457);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 457);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 457);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 457);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:45', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1203', 458);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 458);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 458);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 458);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 458);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:45', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1202', 459);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 459);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 459);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 459);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 459);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:45', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1181', 460);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '22', 460);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 460);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 460);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 460);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:46', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1180', 461);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 461);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 461);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 461);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 461);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:46', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1173', 462);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 462);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 462);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 462);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 462);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:46', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1168', 463);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 463);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 463);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 463);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 463);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:46', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1156', 464);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 464);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 464);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 464);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 464);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:46', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1154', 465);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 465);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 465);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 465);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 465);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:46', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1139', 466);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 466);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 466);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 466);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 466);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:46', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1136', 467);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 467);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 467);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 467);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 467);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:46', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1121', 468);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 468);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 468);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 468);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 468);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:46', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1110', 469);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 469);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '1.7', 469);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 469);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 469);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:46', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1115', 470);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 470);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0.4', 470);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 470);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 470);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:47', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1097', 471);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 471);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0.7', 471);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 471);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 471);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:47', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1100', 472);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 472);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 472);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 472);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 472);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:47', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1090', 473);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 473);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 473);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 473);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 473);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:47', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1059', 474);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 474);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 474);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 474);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 474);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:47', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1083', 475);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 475);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '0', 475);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 475);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 475);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:47', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1031', 476);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 476);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '4.3', 476);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 476);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 476);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:47', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1067', 477);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 477);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '2.1', 477);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 477);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 477);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:47', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1054', 478);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 478);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5', 478);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 478);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 478);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:47', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1005', 479);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 479);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5', 479);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 479);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 479);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:47', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1000', 480);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 480);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '5.4', 480);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 480);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 480);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:48', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1021', 481);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 481);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '7.4', 481);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 481);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 481);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:48', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1022', 482);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 482);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.1', 482);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 482);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 482);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:48', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1026', 483);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 483);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '8.8', 483);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 483);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 483);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:48', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1019', 484);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 484);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '9.3', 484);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 484);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 484);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:48', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '999', 485);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 485);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.9', 485);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 485);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 485);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:48', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1010', 486);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 486);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '11.4', 486);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 486);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 486);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:48', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1011', 487);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 487);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.6', 487);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 487);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 487);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:48', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1013', 488);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 488);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.5', 488);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 488);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 488);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:48', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1023', 489);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '18', 489);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.3', 489);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 489);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 489);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:48', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1034', 490);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 490);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.7', 490);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 490);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 490);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:49', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1051', 491);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 491);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.6', 491);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 491);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 491);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:49', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1054', 492);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 492);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.6', 492);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 492);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 492);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:49', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1058', 493);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '19', 493);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.6', 493);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 493);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 493);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:49', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1089', 494);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 494);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.5', 494);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 494);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 494);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:49', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1099', 495);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 495);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.5', 495);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 495);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 495);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:49', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1104', 496);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 496);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '13.6', 496);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 496);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 496);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:49', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1124', 497);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '20', 497);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.6', 497);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 497);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 497);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:49', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1138', 498);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 498);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '12.5', 498);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 498);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 498);


INSERT INTO measurement(timestamp, notes, id_log) VALUES('2021-07-31 14:00:49', null, 1);
INSERT INTO tachometer(brand, model, rpm, id_measurement) VALUES(null, null, '1154', 499);
INSERT INTO wss(brand, model, speed, id_measurement) VALUES(null, null, '21', 499);
INSERT INTO potentiometer(brand, model, accelerator_angle, id_measurement) VALUES(null, null, '14.2', 499);
INSERT INTO gps(brand, model, satellites_number, coordinates, id_measurement) VALUES(null, null, null, null, 499);
INSERT INTO brake_sensor(brand, model, pressure, id_measurement) VALUES(null, null, null, 499);



-- Adding Wearable sensors
INSERT INTO log(report_number, acquisition_place, notes, id_device) VALUES(2, 'Italia-Lancusi-Piazza Regina Margherita', null, 2); 

INSERT INTO log_investigator(id_investigator, id_log) VALUES(1,2);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:45:56', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 98, 500);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 500);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 500);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 500);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 501);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-0.3440857,0.68330383,9.967361', 501);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 501);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 501);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 502);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 502);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.0041656494,-0.0132751465,0.006164551', 502);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 502);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:05', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 503);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 503);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 503);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 173.0, 503);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 504);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-0.4410553,0.7886505,9.872787', 504);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 504);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 504);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 505);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 505);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.0049438477,-0.005126953,0.0018005371', 505);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 505);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 506);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 506);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 506);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 172.0, 506);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:07', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 507);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 507);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 507);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 171.0, 507);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:09', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 508);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 508);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 508);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 170.0, 508);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:10', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 509);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 509);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 509);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 169.0, 509);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:11', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 510);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '0.2496643,1.4255066,9.832092', 510);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 510);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 510);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:11', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 511);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 511);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 511);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 168.0, 511);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:11', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 512);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 512);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.0013427734,-0.0019378662,0.0029754639', 512);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 512);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:13', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 513);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 513);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 513);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 167.0, 513);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:14', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 514);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 514);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 514);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 166.0, 514);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:15', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 515);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 515);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 515);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 165.0, 515);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 516);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '1.0840454,0.52648926,9.967361', 516);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 516);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 516);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 517);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 517);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 517);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 164.0, 517);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 518);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 518);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.24137878,-0.0064086914,-0.098236084', 518);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 518);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:18', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 519);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 519);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 519);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 163.0, 519);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:19', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 520);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 520);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 520);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 162.0, 520);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:20', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 521);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 521);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 521);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 161.0, 521);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 522);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-1.2897949,-0.83462524,9.338882', 522);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 522);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 522);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 523);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 523);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 523);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 160.0, 523);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 524);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 524);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.026992798,0.0040283203,-0.032073975', 524);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 524);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:22', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 525);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 525);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 525);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 159.0, 525);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:23', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 526);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 526);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 526);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 158.0, 526);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:24', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 527);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 527);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 527);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 157.0, 527);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:25', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 528);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 528);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 528);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 156.0, 528);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:26', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 529);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-3.341629,-2.225647,9.062347', 529);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 529);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 529);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:26', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 530);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 530);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 530);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 146.0, 530);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:27', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 531);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 531);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.13635254,-0.05557251,0.15898132', 531);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 531);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:27', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 532);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 532);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 532);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 136.0, 532);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 533);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 533);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 533);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 132.0, 533);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 534);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 534);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 534);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 131.0, 534);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:31', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 535);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.5243683,-0.51260376,8.747513', 535);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 535);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 535);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:31', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 536);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 536);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 536);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 129.0, 536);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:32', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 537);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 537);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.008300781,-0.0076904297,-9.765625E-4', 537);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 537);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:34', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 538);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 538);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 538);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 128.0, 538);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:35', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 539);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 539);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 539);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 127.0, 539);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:36', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 540);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.152069,-0.93518066,8.929474', 540);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 540);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 540);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 541);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 541);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.001373291,-0.0054016113,0.0063171387', 541);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 541);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 542);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 542);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 542);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 126.0, 542);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:39', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 543);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 543);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 543);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 125.0, 543);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:41', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 544);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.0934143,-0.9495392,8.968979', 544);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 544);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 544);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:41', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 545);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 545);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 545);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 124.0, 545);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:42', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 546);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 546);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.0071105957,-0.0016479492,0.0072021484', 546);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 546);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:42', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 547);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 547);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 547);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 121.0, 547);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:43', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 548);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 548);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 548);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 120.0, 548);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:44', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 549);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 549);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 549);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 118.0, 549);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:46', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 550);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.119751,-1.0345306,8.860046', 550);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 550);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 550);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:46', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 551);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 551);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 551);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 117.0, 551);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:47', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 552);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 552);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '7.6293945E-4,0.0011749268,-0.0043182373', 552);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 552);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:48', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 553);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 553);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 553);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 114.0, 553);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 554);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 554);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 554);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 104.0, 554);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 555);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 555);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 555);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 94.0, 555);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:51', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 556);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.01799,-1.0261536,8.916306', 556);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 556);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 556);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:51', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 557);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 557);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 557);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 84.0, 557);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:52', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 558);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 558);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.004562378,0.0021362305,-0.012298584', 558);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 558);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:52', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 559);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 559);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 559);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 74.0, 559);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:53', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 560);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 560);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 560);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 560);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:54', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 561);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 561);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 561);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 561);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:55', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 562);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 562);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 562);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 562);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:56', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 563);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.0359497,-1.090805,8.948624', 563);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 563);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 563);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:56', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 564);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 564);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 564);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 564);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:57', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 565);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 565);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 565);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 565);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 566);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 566);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.0050201416,0.0018157959,0.005218506', 566);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 566);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 98, 567);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 567);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 567);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 567);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 568);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 568);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 568);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 78.0, 568);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 569);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 569);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 569);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 88.0, 569);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:00', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 570);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 570);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 570);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 98.0, 570);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 571);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-3.9868622,-1.0225677,8.978546', 571);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 571);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 571);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 572);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 572);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 572);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 108.0, 572);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:02', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 573);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 573);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 573);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 118.0, 573);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:03', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 574);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 574);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.021057129,-0.6750641,-0.10694885', 574);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 574);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:03', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 575);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 575);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 575);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 126.0, 575);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:04', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 576);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 576);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 576);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 127.0, 576);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 577);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-2.0715027,-0.4611206,9.68364', 577);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 577);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 577);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:07', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 578);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 578);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 578);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 125.0, 578);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:08', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 579);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 579);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.40483093,0.25257874,0.18930054', 579);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 579);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:09', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 580);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 580);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 580);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 124.0, 580);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:11', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 581);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-2.3408508,-1.655838,9.463379', 581);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 581);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 581);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:13', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 582);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 582);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.008453369,0.0023956299,5.950928E-4', 582);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 582);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:13', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 583);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 583);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 583);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 123.0, 583);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 584);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-2.2869873,-1.5205536,9.433456', 584);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 584);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 584);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:17', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 585);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 585);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 585);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 122.0, 585);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:18', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 586);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 586);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-1.1808777,-2.1470947,0.75697327', 586);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 586);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:20', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 587);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 587);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 587);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 121.0, 587);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 588);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '6.4721985,-4.2511444,6.0420685', 588);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 588);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 588);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:22', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 589);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 589);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 589);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 114.0, 589);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:23', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 590);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 590);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 590);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 113.0, 590);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:23', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 591);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 591);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.4524536,0.58306885,0.67697144', 591);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 591);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:26', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 592);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 592);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 592);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 112.0, 592);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:26', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 593);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-0.5236511,2.4693756,9.439438', 593);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 593);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 593);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:27', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 594);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 594);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 594);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 108.0, 594);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 595);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 595);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.09034729,-0.3790741,0.08416748', 595);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 595);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 596);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 596);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 596);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 107.0, 596);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:31', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 597);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-3.4864807,-0.8717346,9.306564', 597);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 597);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 597);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:33', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 598);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 598);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 598);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 102.0, 598);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:35', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 599);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 599);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 599);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 101.0, 599);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:38', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 600);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 600);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 600);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 100.0, 600);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:42', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 601);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 601);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 601);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 99.0, 601);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:43', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 602);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 602);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 602);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 93.0, 602);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:52', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 603);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 603);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 603);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 92.0, 603);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 604);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-9.417404,-2.7447205,1.2395325', 604);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 604);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 604);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 605);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 605);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '2.5139313,0.40634155,0.72187805', 605);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 605);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:47:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 97, 606);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 606);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 606);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 606);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:00', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 607);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 607);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 607);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 87.0, 607);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:02', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 608);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 608);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 608);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 82.0, 608);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:03', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 609);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 609);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 609);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 79.0, 609);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 610);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 610);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 610);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 78.0, 610);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:19', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 611);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 611);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 611);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 77.0, 611);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:22', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 612);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 612);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 612);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 76.0, 612);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:24', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 613);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 613);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 613);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 75.0, 613);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:26', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 614);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 614);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 614);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 72.0, 614);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:31', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 615);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 615);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 615);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 71.0, 615);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:32', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 616);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 616);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 616);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 70.0, 616);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 617);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '7.5477905,2.9874878,5.787567', 617);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 617);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 617);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 618);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 618);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.77207947,-0.035842896,-0.21859741', 618);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 618);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 97, 619);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 619);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 619);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 619);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:42', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 620);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.8301086,-8.242157,-3.2879028', 620);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 620);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 620);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:42', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 621);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 621);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.4818573,-0.046813965,0.2602539', 621);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 621);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:54', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 622);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 622);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 622);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 622);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:57', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 623);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 623);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 623);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 623);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 624);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 624);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 624);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 72.0, 624);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 625);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 625);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.1572113,0.14813232,-0.0061798096', 625);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 625);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 626);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.7935944,-7.7731323,-3.418747', 626);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 626);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 626);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:48:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 97, 627);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 627);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 627);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 627);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:00', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 628);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 628);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 628);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 71.0, 628);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:03', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 629);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 629);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 629);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 70.0, 629);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:09', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 630);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 630);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-3.0039215,0.3954773,0.7063751', 630);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 630);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:09', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 631);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-9.992722,-1.9000397,1.8297119', 631);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 631);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 631);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:10', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 97, 632);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 632);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 632);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 632);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:18', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 97, 633);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 633);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 633);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 633);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:18', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 634);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-7.9729767,-6.288849,0.054763794', 634);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 634);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 634);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:18', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 635);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 635);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-1.2172546,-1.2711334,0.041229248', 635);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 635);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:23', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 636);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.8262787,-7.379532,4.419998', 636);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 636);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 636);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:23', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 637);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 637);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.017059326,-0.014328003,0.0027770996', 637);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 637);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:25', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 638);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 638);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 638);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 71.0, 638);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:27', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 639);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 639);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 639);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 73.0, 639);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:34', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 640);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 640);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '2.2411194,-0.5176697,-0.10140991', 640);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 640);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:34', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 641);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-2.858841,-4.0339966,6.614044', 641);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 641);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 641);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:34', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 642);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 642);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 642);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 72.0, 642);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:34', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 97, 643);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 643);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 643);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 643);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:36', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 644);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 644);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 644);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 644);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 645);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 645);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 645);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 645);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:38', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 646);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 646);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 646);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 646);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:40', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 647);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 647);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 647);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 647);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:40', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 648);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 648);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 648);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 648);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:44', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 649);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 649);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 649);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 649);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:51', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 650);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 650);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 650);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 650);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 651);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 651);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 651);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 651);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 652);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 652);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.6029663,0.38833618,-0.3932953', 652);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 652);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 653);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-6.714218,-6.8516083,4.861603', 653);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 653);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 653);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:49:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 97, 654);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 654);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 654);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 654);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:04', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 655);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-3.3640137,-3.9630127,8.182724', 655);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 655);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 655);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:04', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 656);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 656);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.13909912,0.24601746,-0.060821533', 656);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 656);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:04', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 657);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 657);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 657);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 657);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:07', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 658);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 658);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 658);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 658);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:09', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 659);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.851288,-4.158249,5.8919525', 659);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 659);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 659);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:09', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 660);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 660);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '2.9701843,-0.7952728,0.6661072', 660);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 660);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 661);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-2.3051758,-7.977356,-1.9888153', 661);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 661);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 661);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 662);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 662);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-2.1145325,0.33561707,-0.8266449', 662);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 662);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 663);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 663);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 663);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 663);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 664);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.4164276,0.3780365,9.629776', 664);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 664);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 664);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 665);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 665);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.023742676,-0.026046753,0.010009766', 665);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 665);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:25', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 666);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 666);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 666);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 666);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 667);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.6705627,-8.764343,4.810364', 667);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 667);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 667);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 668);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 668);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-2.137329,0.018798828,0.4975891', 668);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 668);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 669);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 669);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 669);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 669);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:38', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 670);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 670);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 670);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 62.0, 670);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:43', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 671);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '0.25494385,-8.340927,2.6000366', 671);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 671);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 671);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:43', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 672);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 672);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '1.728302,-0.30822754,-0.11781311', 672);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 672);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:48', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 673);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.1596527,-5.300766,7.91098', 673);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 673);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 673);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:48', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 674);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 674);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.8181,-0.15600586,0.3657074', 674);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 674);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 675);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 675);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 675);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 675);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:51', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 676);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 676);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 676);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 676);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:52', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 677);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 677);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 677);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 677);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:53', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 678);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 678);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 678);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 678);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:56', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 679);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 679);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 679);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 679);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:57', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 680);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 680);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 680);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 680);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 681);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 681);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 681);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 681);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 682);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 682);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 682);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 682);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 683);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-0.49612427,-9.8806305,-0.260437', 683);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 683);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 683);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:50:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 684);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 684);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.7966919,0.21406555,0.19856262', 684);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 684);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:00', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 685);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 685);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 685);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 685);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 686);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 686);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 686);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 71.0, 686);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:03', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 687);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '0.7735138,-9.581482,0.22343445', 687);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 687);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 687);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:03', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 688);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 688);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.3902893,-0.10913086,-0.8137512', 688);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 688);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:04', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 689);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 689);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 689);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 72.0, 689);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 690);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 690);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 690);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 71.0, 690);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 691);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 691);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 691);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 70.0, 691);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:19', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 692);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 692);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 692);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 692);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:22', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 693);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 693);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 693);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 71.0, 693);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:22', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 694);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.7919006,-7.941574,4.1573486', 694);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 694);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 694);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:22', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 695);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 695);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.40055847,-0.06663513,-0.07925415', 695);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 695);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:22', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 696);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 696);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 696);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 696);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:25', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 697);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 697);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 697);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 72.0, 697);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:27', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 698);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-6.297867,-7.4499207,-0.12863159', 698);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 698);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 698);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:27', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 699);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 699);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.06602478,0.08665466,-0.044525146', 699);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 699);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:33', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 700);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 700);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 700);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 73.0, 700);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:34', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 701);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 701);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 701);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 701);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:34', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 702);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-5.7980804,-7.814438,-1.07518', 702);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 702);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 702);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:34', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 703);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 703);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.14485168,-0.059173584,0.17054749', 703);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 703);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:40', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 704);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-5.6556244,-8.761581,0.10133362', 704);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 704);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 704);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:40', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 705);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 705);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-1.608963,-0.95410156,-0.37039185', 705);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 705);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:42', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 706);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 706);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 706);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 71.0, 706);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:45', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 707);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-6.6840515,-6.0214233,-4.69162', 707);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 707);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 707);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:45', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 708);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 708);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.18025208,-0.4039917,0.013320923', 708);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 708);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 709);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-6.056656,-7.602066,0.58555603', 709);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 709);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 709);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 710);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 710);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.015365601,-0.0071868896,0.003189087', 710);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 710);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:53', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 711);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 711);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 711);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 70.0, 711);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:56', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 712);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 712);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.30795288,1.0072632,0.8779907', 712);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 712);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:56', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 713);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.6003876,-7.2674866,-5.2622833', 713);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 713);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 713);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:51:56', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 714);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 714);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 714);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 714);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 715);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 715);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 715);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 715);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 716);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '7.0458527,-1.2058411,6.8554993', 716);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 716);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 716);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 717);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 717);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.4335785,0.28256226,-0.16308594', 717);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 717);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 718);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 718);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 718);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 71.0, 718);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:05', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 719);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 719);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 719);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 70.0, 719);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:05', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 720);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 720);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 720);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 71.0, 720);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 721);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 721);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 721);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 70.0, 721);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:11', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 722);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 722);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 722);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 722);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:13', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 723);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 723);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 723);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 723);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 724);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 724);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 724);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 62.0, 724);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:31', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 725);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 725);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 725);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 725);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:33', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 726);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 726);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 726);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 62.0, 726);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:34', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 727);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 727);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 727);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 727);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 728);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 728);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '1.6806183,1.5209045,1.6676941', 728);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 728);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 729);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-9.482162,-1.6314087,2.5231934', 729);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 729);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 729);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:52:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 730);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 730);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 730);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 730);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:03', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 731);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-9.26297,1.7536316,0.72094727', 731);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 731);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 731);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:03', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 732);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 732);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.36917114,0.15097046,-0.47157288', 732);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 732);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:04', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 733);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 733);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 733);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 733);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:10', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 734);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 734);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 734);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 734);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:14', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 735);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 735);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 735);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 735);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:19', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 736);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 736);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '1.3575134,0.26367188,-0.25468445', 736);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 736);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:19', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 737);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-9.462051,-2.3561401,-0.40168762', 737);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 737);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 737);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:19', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 738);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 738);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 738);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 738);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:24', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 739);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 739);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.046722412,0.08076477,0.066711426', 739);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 739);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:24', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 740);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-0.10946655,2.5400085,9.502884', 740);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 740);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 740);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:33', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 741);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-9.484558,-1.0314178,2.0455475', 741);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 741);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 741);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:33', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 742);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 742);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.96299744,0.046524048,-0.039505005', 742);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 742);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:33', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 743);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 743);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 743);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 743);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:41', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 744);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 744);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 744);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 744);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 745);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 745);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 745);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 745);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 746);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 746);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 746);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 746);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:51', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 747);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 747);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 747);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 747);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:53', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 748);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 748);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 748);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 748);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 749);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.0821533,-7.4367523,1.9023743', 749);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 749);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 749);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 750);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 750);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.089157104,0.22314453,-0.0022125244', 750);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 750);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:53:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 751);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 751);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 751);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 751);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:03', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 752);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 752);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 752);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 752);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 753);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 753);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-3.5178833,-0.10235596,0.75001526', 753);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 753);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 754);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-0.48258972,-8.813889,-4.6105804', 754);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 754);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 754);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 755);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 755);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 755);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 755);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:22', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 756);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 756);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 756);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 756);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:46', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 757);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 757);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 757);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 757);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:53', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 758);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 758);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 758);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 758);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 759);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 759);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 759);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 759);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 760);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 760);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 760);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 760);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 761);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.982254,-7.9040985,-1.9597168', 761);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 761);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 761);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 762);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 762);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.17027283,0.16386414,0.17088318', 762);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 762);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:54:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 763);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 763);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 763);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 763);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:55:12', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 764);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 764);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 764);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 764);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:55:26', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 765);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 765);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 765);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 70.0, 765);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:55:32', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 766);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 766);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 766);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 766);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:55:48', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 767);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 767);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.0036773682,5.493164E-4,-0.011688232', 767);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 767);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:55:48', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 768);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.6788788,-8.462311,3.292572', 768);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 768);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 768);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:55:48', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 769);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 769);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 769);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 769);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:55:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 770);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 770);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 770);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 70.0, 770);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:55:53', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 771);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 771);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.004211426,-0.011276245,6.5612793E-4', 771);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 771);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:55:53', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 772);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '4.158203,-8.802765,1.2349854', 772);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 772);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 772);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:00', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 773);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 773);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.024978638,-0.013183594,0.010131836', 773);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 773);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:00', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 774);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.7851868,-5.898361,6.917618', 774);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 774);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 774);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:08', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 775);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 775);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 775);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 775);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 776);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 776);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 776);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 776);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:24', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 777);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 777);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 777);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 57.0, 777);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:26', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 778);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 778);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 778);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 60.0, 778);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:30', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 779);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 779);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 779);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 61.0, 779);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 780);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 780);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 780);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 62.0, 780);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:47', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 781);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 781);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 781);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 781);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:48', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 782);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 782);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 782);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 782);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 783);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 783);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 783);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 783);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:51', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 784);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 784);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 784);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 784);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:51', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 96, 785);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 785);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 785);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 785);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:55', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 786);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 786);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 786);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 786);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:56', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 787);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 787);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 787);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 787);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:57', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 788);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 788);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 788);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 788);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 789);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 789);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 789);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 789);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 790);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 790);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.06652832,-0.064956665,0.05860901', 790);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 790);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:56:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 791);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.967865,-7.348648,5.301895', 791);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 791);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 791);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:57:02', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 792);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 792);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 792);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 792);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:57:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 793);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 793);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 793);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 793);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:57:30', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 794);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 794);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 794);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 794);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:57:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 795);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 795);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 795);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 795);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:57:56', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 796);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 796);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 796);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 796);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:57:57', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 797);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 797);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 797);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 797);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:57:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 798);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 798);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.039352417,-7.6293945E-5,8.69751E-4', 798);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 798);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:57:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 799);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '0.65190125,-6.2400055,7.7698364', 799);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 799);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 799);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:57:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 95, 800);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 800);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 800);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 800);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:57:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 801);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 801);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 801);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 801);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:58:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 802);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 802);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 802);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 802);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:58:26', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 803);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 803);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 803);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 70.0, 803);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:58:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 804);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 804);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 804);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 804);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:58:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 805);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 805);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 805);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 805);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:58:35', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 806);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 806);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 806);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 806);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:58:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 807);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 807);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 807);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 807);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:58:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 808);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 808);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.6443329,-0.5287781,0.66571045', 808);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 808);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:58:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 809);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.7950592,-6.321167,7.047394', 809);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 809);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 809);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:58:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 95, 810);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 810);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 810);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 810);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:58:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 811);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 811);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 811);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 811);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:59:00', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 812);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 812);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 812);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 812);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:59:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 813);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 813);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 813);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 813);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:59:20', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 814);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 814);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 814);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 814);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:59:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 815);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 815);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 815);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 815);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:59:24', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 816);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 816);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 816);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 816);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:59:25', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 817);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 817);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.010696411,-0.0024261475,3.3569336E-4', 817);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 817);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:59:25', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 818);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.5071716,-5.190155,8.021225', 818);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 818);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 818);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:59:25', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 95, 819);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 819);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 819);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 819);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:59:25', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 820);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 820);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 820);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 820);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:00:09', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 821);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 821);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 821);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 821);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:00:10', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 822);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 822);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 822);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 822);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:00:23', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 823);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 823);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 823);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 823);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:00:27', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 824);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 824);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 824);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 824);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:00:31', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 825);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 825);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 825);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 825);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:00:32', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 95, 826);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 826);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 826);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 826);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:00:33', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 827);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 827);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 827);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 827);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:00:44', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 828);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 828);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 828);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 828);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:00:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 829);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 829);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.6236572,0.2681427,-0.27566528', 829);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 829);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:00:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 830);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.196762,-9.481766,1.364151', 830);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 830);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 830);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:00:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 95, 831);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 831);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 831);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 831);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:01:04', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 832);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 832);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 832);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 62.0, 832);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:00', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 833);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 833);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.0105896,0.04977417,0.0022583008', 833);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 833);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 95, 834);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 834);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 834);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 834);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 835);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 835);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 835);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 835);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 836);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 836);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 836);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 63.0, 836);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 837);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 837);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 837);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 53.0, 837);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 838);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 838);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 838);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 838);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 839);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 839);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 839);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 839);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 840);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 840);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 840);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 840);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 841);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 841);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 841);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 53.0, 841);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 842);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 842);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 842);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 842);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 843);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 843);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 843);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 843);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 844);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 844);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 844);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 844);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 845);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 845);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 845);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 53.0, 845);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 846);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 846);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 846);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 846);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 847);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 847);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 847);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 847);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:49', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 848);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 848);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 848);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 51.0, 848);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 849);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 849);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 849);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 50.0, 849);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 850);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 850);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 850);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 49.0, 850);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 851);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 851);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 851);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 51.0, 851);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 852);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 852);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 852);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 53.0, 852);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 853);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 853);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 853);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 55.0, 853);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 854);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 854);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 854);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 59.0, 854);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 855);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 855);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 855);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 60.0, 855);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 856);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 856);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 856);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 59.0, 856);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 857);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 857);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 857);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 58.0, 857);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 858);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 858);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.007827759,0.03942871,-0.025650024', 858);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 858);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 859);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.9707336,-4.7644653,7.5603485', 859);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 859);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 859);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:02:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 95, 860);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 860);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 860);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 860);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:03:00', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 861);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 861);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 861);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 59.0, 861);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:03:15', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 862);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 862);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 862);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 60.0, 862);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:03:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 863);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 863);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 863);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 61.0, 863);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:04:00', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 864);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 864);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.005584717,0.009399414,-0.016281128', 864);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 864);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:04:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 865);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.5577393,-5.4367523,7.4303436', 865);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 865);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 865);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:04:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 95, 866);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 866);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 866);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 866);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:05:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 95, 867);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 867);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 867);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 867);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 95, 868);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 868);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 868);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 868);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 869);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 869);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.02166748,-0.010314941,-0.0014648438', 869);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 869);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 870);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.1825714,-0.1427002,9.372406', 870);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 870);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 870);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 871);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 871);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 871);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 59.0, 871);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 872);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 872);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 872);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 60.0, 872);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 873);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 873);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 873);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 61.0, 873);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 874);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 874);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 874);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 60.0, 874);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 875);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 875);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 875);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 59.0, 875);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 876);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 876);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 876);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 61.0, 876);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 877);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 877);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 877);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 64.0, 877);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 878);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 878);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 878);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 59.0, 878);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 879);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 879);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 879);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 57.0, 879);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 880);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 880);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 880);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 59.0, 880);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 881);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 881);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 881);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 56.0, 881);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 882);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 882);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 882);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 55.0, 882);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 883);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 883);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 883);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 54.0, 883);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 884);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 884);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 884);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 54.0, 884);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 885);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 885);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 885);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 53.0, 885);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 886);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 886);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 886);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 54.0, 886);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 887);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 887);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 887);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 53.0, 887);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 888);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 888);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 888);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 54.0, 888);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 889);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 889);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 889);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 53.0, 889);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 890);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 890);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 890);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 54.0, 890);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 891);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 891);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 891);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 55.0, 891);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 892);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 892);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 892);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 54.0, 892);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 893);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 893);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 893);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 55.0, 893);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 894);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 894);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 894);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 54.0, 894);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 895);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 895);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 895);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 55.0, 895);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 896);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 896);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 896);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 55.0, 896);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 897);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 897);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 897);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 60.0, 897);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 898);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 898);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 898);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 61.0, 898);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 899);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 899);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 899);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 60.0, 899);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 900);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 900);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 900);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 57.0, 900);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 901);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 901);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 901);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 55.0, 901);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 94, 902);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 902);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 902);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 902);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 903);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 903);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 903);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 56.0, 903);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 904);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 904);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 904);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 55.0, 904);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 905);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 905);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 905);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 56.0, 905);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 906);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 906);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 906);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 57.0, 906);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 907);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 907);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 907);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 56.0, 907);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 908);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 908);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 908);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 57.0, 908);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 909);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 909);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 909);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 58.0, 909);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 910);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 910);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 910);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 57.0, 910);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 911);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 911);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 911);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 56.0, 911);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 912);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 912);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 912);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 57.0, 912);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 913);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 913);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 913);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 58.0, 913);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 914);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 914);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 914);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 59.0, 914);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 915);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 915);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 915);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 57.0, 915);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 916);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 916);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 916);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 55.0, 916);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 917);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 917);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 917);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 54.0, 917);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 918);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 918);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 918);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 53.0, 918);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 919);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 919);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 919);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 919);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 920);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 920);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 920);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 920);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 921);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 921);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 921);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 51.0, 921);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 922);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 922);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 922);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 51.0, 922);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 923);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 923);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 923);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 923);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 924);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 924);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 924);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 924);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 925);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 925);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 925);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 53.0, 925);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 926);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 926);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 926);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 54.0, 926);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 927);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 927);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 927);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 55.0, 927);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:33', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 928);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.0676422,-0.46951294,9.267059', 928);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 928);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 928);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:33', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 929);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 929);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.007293701,-9.1552734E-5,0.019088745', 929);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 929);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:36', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 930);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 930);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 930);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 56.0, 930);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:38', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 931);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.1239166,-0.532959,9.417892', 931);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 931);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 931);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:38', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 932);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 932);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.005493164,-5.645752E-4,-0.004562378', 932);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 932);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:43', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 933);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.1825714,-0.46232605,9.349655', 933);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 933);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 933);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:43', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 934);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 934);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-5.950928E-4,0.0054626465,0.0011901855', 934);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 934);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:48', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 935);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.1801758,-0.3414154,9.410706', 935);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 935);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 935);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:48', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 936);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 936);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.005126953,0.0015869141,-0.00289917', 936);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 936);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:52', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 937);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 937);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 937);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 57.0, 937);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:53', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 938);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.308258,0.008132935,9.364014', 938);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 938);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 938);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:53', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 939);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 939);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.0052948,-6.1035156E-4,-0.0040740967', 939);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 939);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 940);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.3022766,0.14700317,9.365219', 940);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 940);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 940);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:08:59', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 941);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 941);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.007156372,6.713867E-4,-0.003692627', 941);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 941);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:02', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 942);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 942);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 942);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 57.0, 942);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:03', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 943);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.3573456,0.13143921,9.326904', 943);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 943);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 943);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:04', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 944);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 944);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.003692627,-5.0354004E-4,-2.89917E-4', 944);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 944);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:08', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 945);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.8437958,-0.28634644,9.459793', 945);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 945);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 945);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:09', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 946);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 946);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.01008606,-0.0022583008,0.004180908', 946);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 946);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:13', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 947);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.901245,-0.1762085,9.456192', 947);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 947);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 947);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:14', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 948);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 948);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.001083374,0.0015869141,0.002532959', 948);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 948);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:15', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 949);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 949);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 949);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 60.0, 949);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 950);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 950);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 950);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 55.0, 950);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:18', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 951);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.8916779,-0.2612152,9.456192', 951);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 951);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 951);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:18', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 952);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 952);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 952);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 53.0, 952);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:19', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 953);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 953);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.005340576,-3.3569336E-4,1.373291E-4', 953);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 953);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:19', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 954);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 954);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 954);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 52.0, 954);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:21', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 955);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 955);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 955);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 56.0, 955);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:23', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 956);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.8976593,-0.25881958,9.482529', 956);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 956);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 956);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:23', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 957);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 957);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 957);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 957);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:24', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 958);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 958);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.002319336,-0.0024108887,7.6293945E-5', 958);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 958);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:26', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 959);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 959);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 959);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 56.0, 959);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:27', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 960);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 960);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 960);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 960);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:27', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 94, 961);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 961);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 961);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 961);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 962);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.8856812,-0.22050476,9.502884', 962);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 962);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 962);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:28', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 963);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 963);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 963);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 76.0, 963);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 964);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 964);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 964);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 79.0, 964);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 965);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 965);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.008346558,-0.025848389,-0.02357483', 965);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 965);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:30', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 966);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 966);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 966);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 78.0, 966);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:31', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 967);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 967);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 967);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 80.0, 967);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:32', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 968);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 968);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 968);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 78.0, 968);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:33', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 969);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.1430664,0.16854858,9.397537', 969);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 969);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 969);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:35', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 970);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 970);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.004623413,5.187988E-4,-0.0015716553', 970);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 970);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:35', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 971);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 971);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 971);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 77.0, 971);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 972);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 972);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 972);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 77.0, 972);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:38', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 973);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '3.229248,0.1781311,9.353241', 973);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 973);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 973);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:40', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 974);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 974);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.008010864,8.8500977E-4,0.009613037', 974);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 974);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:40', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 975);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 975);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 975);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 77.0, 975);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:41', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 976);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 976);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 976);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 75.0, 976);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:42', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 977);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 977);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 977);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 72.0, 977);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:43', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 978);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '2.915619,-0.39050293,9.489716', 978);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 978);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 978);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:43', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 979);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 979);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 979);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 69.0, 979);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:44', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 980);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 980);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 980);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 980);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:45', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 981);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 981);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.09637451,0.0884552,0.11891174', 981);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 981);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:47', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 982);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 982);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 982);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 982);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:48', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 983);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-0.07713318,1.8995514,8.345291', 983);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 983);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 983);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 984);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 984);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.0022735596,-0.19032288,0.07810974', 984);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 984);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:50', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 985);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 985);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 985);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 985);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:51', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 986);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 986);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 986);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 986);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:55', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 987);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 987);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 987);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 987);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 94, 988);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 988);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 988);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 988);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 989);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.8058014,-4.3230896,2.4123383', 989);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 989);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 989);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:09:58', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 990);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 990);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '1.0354767,1.0935211,1.1934967', 990);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 990);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:10:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 991);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 991);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 991);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 991);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:10:11', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 992);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-4.634262,-8.839508,-3.7050934', 992);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 992);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 992);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:10:11', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 993);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 993);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.3894806,-0.79725647,-0.08647156', 993);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 993);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:10:12', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 94, 994);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 994);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 994);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 994);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:10:23', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 995);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 995);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 995);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 995);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:10:25', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 996);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 996);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 996);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 65.0, 996);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:10:27', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 997);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 997);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 997);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 66.0, 997);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:10:29', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 998);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 998);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 998);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 67.0, 998);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 08:10:37', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 999);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 999);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 999);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 68.0, 999);
