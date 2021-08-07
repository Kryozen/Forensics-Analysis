-- Adding Wearable sensors
INSERT INTO log(report_number, acquisition_place, notes, id_device) VALUES(2, 'Italia-Lancusi-Piazza Regina Margherita', null, 2); 
INSERT INTO log_investigator(id_investigator, id_log) VALUES(1,2);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:45:56', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, 98, 3000);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3000);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3000);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 3000);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3001);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-0.3440857,0.68330383,9.967361', 3001);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3001);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 3001);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:01', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3002);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3002);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.0041656494,-0.0132751465,0.006164551', 3002);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 3002);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:05', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3003);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3003);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3003);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 173.0, 3003);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3004);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '-0.4410553,0.7886505,9.872787', 3004);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3004);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 3004);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3005);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3005);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.0049438477,-0.005126953,0.0018005371', 3005);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 3005);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:06', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3006);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3006);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3006);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 172.0, 3006);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:07', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3007);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3007);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3007);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 171.0, 3007);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:09', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3008);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3008);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3008);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 170.0, 3008);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:10', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3009);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3009);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3009);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 169.0, 3009);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:11', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3010);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '0.2496643,1.4255066,9.832092', 3010);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3010);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 3010);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:11', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3011);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3011);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3011);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 168.0, 3011);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:11', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3012);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3012);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '0.0013427734,-0.0019378662,0.0029754639', 3012);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 3012);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:13', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3013);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3013);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3013);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 167.0, 3013);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:14', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3014);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3014);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3014);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 166.0, 3014);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:15', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3015);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3015);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3015);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 165.0, 3015);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3016);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, '1.0840454,0.52648926,9.967361', 3016);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3016);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 3016);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3017);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3017);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3017);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 164.0, 3017);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:16', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3018);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3018);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, '-0.24137878,-0.0064086914,-0.098236084', 3018);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, null, 3018);

INSERT INTO measurement(timestamp, notes, id_log) VALUES('2017-06-29 07:46:18', null, 2);
INSERT INTO battery(brand, model, voltage, percentage, id_measurement) VALUES(null, null, null, null, 3019);
INSERT INTO accelerometer(brand, model, acceleration, id_measurement) VALUES(null, null, null, 3019);
INSERT INTO gyroscope(brand, model, rotation, id_measurement) VALUES(null, null, null, 3019);
INSERT INTO hrm(brand, model, heart_rate, id_measurement) VALUES(null, null, 163.0, 3019);