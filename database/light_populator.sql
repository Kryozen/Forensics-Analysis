-- Light populator for df_framework

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

-- Populate Device
INSERT INTO device(brand, model, owner_name, owner_surname, type, notes) 
VALUES('Subaru', 'Impreza', null, null, 'Smart vehicle', 'Unknown owner'),
('Huawei', 'Watch GT', null, null, 'Wearable', 'Unknown owner');

-- Populate Digital investigators
INSERT INTO digital_investigator(name, surname, agency, category, specialization) 
VALUES('Simone', 'Masullo', 'Ministero della Giustizia', 'Investigatore Forense', 'Digitale'), 
('Orazio', 'Cesarano', 'Ministero della Giustizia', 'Investigatore Forense', 'Digitale');