$(document).ready(function() {

    "use strict";

    updateFileName();
    loadDigitalInvestigator();

    importCSV();

});

/*
    This js file supplies the functions to convert the csv log file into a xml file.
    The xml file should be something like:
    <xml ver>
    <log>
        -- report number
        -- acquisition place
        -- acquisition notes
        <digital_investigators>
            <digital_investigator>
                -- name
                ...
            </>
            ---
        </>
        <device>
            -- brand
            -- model
            -- type
            -- owner_name
            -- owner_surname
            -- notes
        </>
        <measurements>
            <measurement>
                -- timestamp
                -- notes
                <sensors>
                    <sensor name>
                        <value name> value </>
                    </>
                    ...
                </>
            </>
        </>
    </log>
 */

/*
    * When the user uploads a csv file the label inside the input box changes to the file name
    * Just graphic purposes!
 */
function updateFileName() {
    "use strict";
    $("#custom-input").change(function(event) {
        var name = event.target.files[0].name;
        $('.custom-file-label').html(name);
    });
}

/*
    * This method loads the list of Digital Investigators and puts them as options for the select
 */
function loadDigitalInvestigator() {
    var param = {
        from_result: 0,
        for_result: 9999
    }   //Can load up to 9999 investigators

    function callbackLoadDigitalInvestigator(data) {
        $('#select-digital-investigator').append( '<option selected disabled hidden>Choose here</option>' );
        $.each(data.results, function(index, item) {
            $('#select-digital-investigator').append( '<option>' + item.id + " - " + item.name + " " + item.surname + '</option>' );
        });
    }

    $.postJSON("DigitalInvestigator", "getAllNamesSurnames", param, callbackLoadDigitalInvestigator);
}

/**
 * This function is used to generate the xml file from the csv file.
 * If the form validation is correct it uses the methods createXML to create the xml file and saveLog to save
 * the xml file.
 */
function importCSV() {
    "use strict";
    $("#form-xml-generate").off().on("submit", function(event) {
        event.preventDefault();

        if (validateForm() === true) {
            var file = $("#custom-input").prop('files')[0];
            Papa.parse(file, {
                header: true,
                complete: function (results) {
                    var xml = createXML(results.data);
                    saveLog(xml);
                }
            });
        } else {
            console.log("XML not generated!");
        }
    });
}

/**
 * This function validates the form before generating the xml file.
 * @returns true if the form is compilated correctly
 * @returns false otherwhise
 */
function validateForm() {
    "use strict";
    // Check report-number
    if ($("#report-number").val().length < 1) {
        $("#report-number").removeClass("is-valid");
        $("#report-number").addClass("is-invalid");
        $("#a-general").click();
        return false;
    } else {
        if ($.isNumeric($("#report-number").val())) {
            $("#report-number").removeClass("is-invalid");
            $("#report-number").addClass("is-valid");
        } else {
            $("#report-number").removeClass("is-valid");
            $("#report-number").addClass("is-invalid");
            $("#a-general").click();
            return false;
        }
    }

    // Check acquisition-nation
    if ($("#acquisition-nation").val().length < 1) {
        $("#acquisition-nation").removeClass("is-valid");
        $("#acquisition-nation").addClass("is-invalid");
        $("#acquisition-nation").next().text("Please enter the acquisition's nation!");
        $("#a-general").click();
        return false;
    } else {
        // Check if there is a numeric value inside the string
        if ($("#acquisition-nation").val().match(/\d/)) {
            $("#acquisition-nation").removeClass("is-valid");
            $("#acquisition-nation").addClass("is-invalid");
            $("#acquisition-nation").next().text("Please enter a valid acquisition's nation!");
            $("#a-general").click();
            return false;
        } else {
            $("#acquisition-nation").removeClass("is-invalid");
            $("#acquisition-nation").addClass("is-valid");
        }
    }

    // Check acquisition-city
    if ($("#acquisition-city").val().length < 1) {
        $("#acquisition-city").removeClass("is-valid");
        $("#acquisition-city").addClass("is-invalid");
        $("#acquisition-city").next().text("Please enter the acquisition's city!");
        $("#a-general").click();
        return false;
    } else {
        // Check if there is a numeric value inside the string
        if ($("#acquisition-city").val().match(/\d/)) {
            $("#acquisition-city").removeClass("is-valid");
            $("#acquisition-city").addClass("is-invalid");
            $("#acquisition-city").next().text("Please enter a valid acquisition's city!");
            $("#a-general").click();
            return false;
        } else {
            $("#acquisition-city").removeClass("is-invalid");
            $("#acquisition-city").addClass("is-valid");
        }
    }

    // Check acquisition-street
    if ($("#acquisition-street").val().length < 1) {
        $("#acquisition-street").removeClass("is-valid");
        $("#acquisition-street").addClass("is-invalid");
        $("#a-general").click();
        return false;
    } else {
        $("#acquisition-street").removeClass("is-invalid");
        $("#acquisition-street").addClass("is-valid");
    }

    // Notes are always valid since can be null
    $("#acquisition-notes").addClass("is-valid");

    // Check digital-investigator
    if (!$("#select-digital-investigator").val()) {
        $("#select-digital-investigator").removeClass("is-valid");
        $("#select-digital-investigator").addClass("is-invalid");
        $("#a-digital-investigator").click();
        return false;
    } else {
        $("#select-digital-investigator").removeClass("is-invalid");
        $("#select-digital-investigator").addClass("is-valid");
    }


    // Device informations are always valid since we don't allow to choose the device in this first release
    $("#device-brand").addClass("is-valid");
    $("#device-model").addClass("is-valid");


    // Check custom-input
    if ($("#custom-input").val() == '') {
        $("#custom-input").removeClass("is-valid");
        $("#custom-input").addClass("is-invalid");
        return false;
    } else {
        // Check if the input file is a csv file
        var extension = $("#custom-input").val().split('.').pop().toLowerCase();
        if (extension === "csv") {
            $("#custom-input").removeClass("is-invalid");
            $("#custom-input").addClass("is-valid");
        } else {
            $("#custom-input").removeClass("is-valid");
            $("#custom-input").addClass("is-invalid");
            return false;
        }
    }

    return true;
}

/**
 * Function to create the XML file
 * @param data csv file returned by the Papa library
 * @returns file.xml the xml file
 */
function createXML(data) {
    "use strict";
    // <log>
    var doc = document.implementation.createDocument(null, "log", null);

    // <report-number>
    var numElem = doc.createElement("report_number");
    var num = doc.createTextNode(String($("#report-number").val()));
    numElem.appendChild(num);

    doc.documentElement.appendChild(numElem);

    // <acquisition-place>
    var placeElem = doc.createElement("acquisition_place");
    var place = doc.createTextNode(String($("#acquisition-nation").val() + '-' + $("#acquisition-city").val() + '-' + $("#acquisition-street").val()));
    placeElem.appendChild(place);

    doc.documentElement.appendChild(placeElem);

    // <acquisition-notes>
    var notesElem = doc.createElement("acquisition_notes");
    var notes = "";
    if ($("#acquisition-notes").val().length < 1) {
        notes = doc.createTextNode("null");
    } else {
        notes = doc.createTextNode(String($("#acquisition-notes").val()));
    }
    notesElem.appendChild(notes);

    doc.documentElement.appendChild(notesElem);

    // <digital-investigators>
    var investigatorsElem = doc.createElement("digital_investigators");
    var investigatorElem = doc.createElement("digital_investigator");
    var investigatorIdElem = doc.createElement("id");
    var investigatorId = doc.createTextNode(String($("#select-digital-investigator").val()).split(" - ")[0]);
    investigatorIdElem.appendChild(investigatorId);
    investigatorElem.appendChild(investigatorIdElem);
    var investigatorNameElem = doc.createElement("name");
    var investigatorName = doc.createTextNode(String($("#select-digital-investigator").val()).split(" - ")[1].split(" ")[0]);
    investigatorNameElem.appendChild(investigatorName);
    investigatorElem.appendChild(investigatorNameElem);
    var investigatorSurnameElem = doc.createElement("surname");
    var investigatorSurname = doc.createTextNode(String($("#select-digital-investigator").val()).split(" - ")[1].split(" ")[1]);
    investigatorSurnameElem.appendChild(investigatorSurname);
    investigatorElem.appendChild(investigatorSurnameElem);
    investigatorsElem.appendChild(investigatorElem)

    doc.documentElement.appendChild(investigatorsElem);

    // <device>
    var deviceElem = doc.createElement("device");
    var deviceBrandElem = doc.createElement("brand");
    var deviceBrand = doc.createTextNode(String($("#device-brand").val()));
    deviceBrandElem.appendChild(deviceBrand);
    deviceElem.appendChild(deviceBrandElem);
    var deviceModelElem = doc.createElement("model");
    var deviceModel = doc.createTextNode(String($("#device-model").val()));
    deviceModelElem.appendChild(deviceModel);
    deviceElem.appendChild(deviceModelElem);
    var deviceOwnerElem = doc.createElement("owner_name");
    var deviceOwner = doc.createTextNode(String($("#owner-name").val()));
    if (deviceOwner.length < 1) {
        deviceOwnerElem.appendChild(document.createTextNode("null"));
    } else {
        deviceOwnerElem.appendChild(deviceOwner);
    }
    deviceElem.appendChild(deviceOwnerElem);
    var deviceOwnerSurnameElem = doc.createElement("owner_surname");
    var deviceOwnerSurname = doc.createTextNode(String($("#owner-surname").val()));
    if (deviceOwnerSurname.length < 1) {
        deviceOwnerSurnameElem.appendChild(document.createTextNode("null"));
    } else {
        deviceOwnerSurnameElem.appendChild(deviceOwnerSurname);
    }
    deviceElem.appendChild(deviceOwnerSurnameElem);
    var deviceTypeElem = doc.createElement("type");
    var deviceType = doc.createTextNode(String($("#device-type").val()));
    deviceTypeElem.appendChild(deviceType);
    deviceElem.appendChild(deviceTypeElem);
    var deviceNotesElem = doc.createElement("notes");
    var deviceNotes = doc.createTextNode(String($("#owner-notes").val()));
    deviceNotesElem.appendChild(deviceNotes);
    deviceElem.appendChild(deviceNotesElem);

    doc.documentElement.appendChild(deviceElem);

    var measurementsElem;
    var type = String($("#device-type").val());
    switch(type) {
        case 'Drone':
            console.log('Creating XML file for a Drone.');
            measurementsElem = createXML_drone(data);
            break;
        case 'Wearable':
            console.log('Creating XML file for a Wearable.');
            measurementsElem = createXML_wearable(data);
            break;
        case 'Smart vehicle':
            console.log('Creating XML file for a Smart vehicle.');
            measurementsElem = createXML_smart_vehicle(data);
            break;
        default:
            console.log('Unable to create XML file for ' + type + '.');
    }

    doc.documentElement.appendChild(measurementsElem);
    return doc;

    function createXML_drone(data) {
        // <measurements>
        var measurementsElem = doc.createElement("measurements");

        var count = 0;
        $.each(data, function(index, row) {
            count++;
            // In these drone logs we need to ignore the first row
            var rowNumber = index+2;
            // Magari cambiare il controllo sul TIMESTAMP perchè ho preso per adesso il timestamp del gps ma in futuro potrebbe non essere presente ergo ci vuole il timestamp preciso
            // Perchè il TIMESPAMP deve essere sempre presente
            if(row["GPS:dateTimeStamp"] != '') {
                if(count < data.length-1) {    // Decommentare la riga per limitare i risultati cambiando la variabile count
                    var measurmentElem = doc.createElement("measurement");
                    var timestampVal;

                    var sensorsElem = doc.createElement("sensors");
                    var gpsElem = doc.createElement("gps");
                    var coordinatesElem = doc.createElement("coordinates");
                    var longitude, latitude;

                    var notesVal = "";

                    var colNumber = 1;
                    $.each(row, function(index, value) {
                        colNumber++;
                        // Voltage della batteria
                        if(index === "BatteryInfo:ad_voltage:D") {
                            var batteryElem = doc.createElement("battery");
                            let percentageElem = doc.createElement("percentage");
                            let percentage = doc.createTextNode("null");
                            percentageElem.appendChild(percentage);
                            batteryElem.appendChild(percentageElem);
                            var voltageElem = doc.createElement("voltage");
                            var voltage = doc.createTextNode(value);
                            voltageElem.appendChild(voltage);
                            batteryElem.appendChild(voltageElem);
                            sensorsElem.appendChild(batteryElem);
                            notesVal += "[battery-voltage: " + "info at row=" + rowNumber + " and col=" + colNumber + "]";
                        }
                        // Altitude del barometro - SOPRA IL LIVELLO DEL MARE
                        if(index === "GPS:heightMSL") {
                            var barometerElem = doc.createElement("barometer");
                            var altitudeElem = doc.createElement("altitude");
                            var altitude = doc.createTextNode(value);
                            altitudeElem.appendChild(altitude);
                            barometerElem.appendChild(altitudeElem);
                            sensorsElem.appendChild(barometerElem);
                            notesVal += "[barometer-altitude: " + "info at row=" + rowNumber + " and col=" + colNumber + "]";
                        }
                        // Coordinate del gps - LONGITUDINE
                        if(index === "GPS:Long") {
                            longitude =  value;
                            notesVal += "[gps-logitude: " + "info at row=" + rowNumber + " and col=" + colNumber + "]";
                        }
                        // Coordinate del gps - LATITUDINE
                        if(index === "GPS:Lat") {
                            latitude = value;
                            notesVal += "[gps-latitude: " + "info at row=" + rowNumber + " and col=" + colNumber + "]";
                        }
                        // # Satellites del gps
                        if(index === "GPS:numGPS") {
                            var satellitesElem = doc.createElement("satellites");
                            var satellites = doc.createTextNode(value);
                            satellitesElem.appendChild(satellites);
                            gpsElem.appendChild(satellitesElem);
                            notesVal += "[gps-satellites: " + "info at row=" + rowNumber + " and col=" + colNumber + "]";
                        }
                        // Timestamp
                        if(index === "GPS:dateTimeStamp") {
                            timestampVal = String(value.replace("T", " ").replace("Z" , ""));
                        }
                    });
                    var coordinates = doc.createTextNode(latitude + "," + longitude);
                    coordinatesElem.appendChild(coordinates);
                    gpsElem.appendChild(coordinatesElem);
                    sensorsElem.appendChild(gpsElem);

                    var timestampElem = doc.createElement("timestamp");
                    var timestamp = doc.createTextNode(timestampVal);
                    timestampElem.appendChild(timestamp);
                    measurmentElem.appendChild(timestampElem);

                    // Tutti i dati del sensore photo sono impostati a null
                    var photoElem = doc.createElement("photo");
                    var photoPathElem = doc.createElement("path");
                    var photoPath = doc.createTextNode("null");
                    photoPathElem.appendChild(photoPath);
                    photoElem.appendChild(photoPathElem);
                    var photoSizeElem = doc.createElement("size");
                    var photoSize = doc.createTextNode("null");
                    photoSizeElem.appendChild(photoSize);
                    photoElem.appendChild(photoSizeElem);
                    sensorsElem.appendChild(photoElem);

                    // Tutti i dati del sensore video sono impostati a null
                    var videoElem = doc.createElement("video");
                    var videoLengthElem = doc.createElement("length");
                    var videoLength = doc.createTextNode("null");
                    videoLengthElem.appendChild(videoLength);
                    videoElem.appendChild(videoLengthElem);
                    var videoPathElem = doc.createElement("path");
                    var videoPath = doc.createTextNode("null");
                    videoPathElem.appendChild(videoPath);
                    videoElem.appendChild(videoPathElem);
                    var videoSizeElem = doc.createElement("size");
                    var videoSize = doc.createTextNode("null");
                    videoSizeElem.appendChild(videoSize);
                    videoElem.appendChild(videoSizeElem);
                    sensorsElem.appendChild(videoElem);

                    // Le note per foto e video sono impostate a null
                    notesVal += "[photo-path: null]";
                    notesVal += "[photo-size: null]";
                    notesVal += "[video-length: null]";
                    notesVal += "[video-path: null]";
                    notesVal += "[video-size: null]";
                    var notesElem = doc.createElement("notes");
                    var notes = doc.createTextNode(notesVal);
                    notesElem.appendChild(notes);
                    measurmentElem.appendChild(notesElem);

                    measurmentElem.appendChild(sensorsElem);
                    measurementsElem.appendChild(measurmentElem);
                }
            }
        });

        return measurementsElem;
    }
    function createXML_wearable(data) {
        // <measurements>
        var measurementsElem = doc.createElement("measurements");

        var count = 0;
        $.each(data, function(index, row) {
            count ++;
            if(row["timestamp"] !== '') {    // It is fundamental that timestamp is not empty
                if(count < data.length - 1) {
                    // <measurement>
                    var measurementElem = doc.createElement("measurement");

                    var timestampVal;
                    var notesVal = "";

                    // <sensors>
                    var sensorsElem = doc.createElement("sensors");

                    var colNumber = 1;
                    var sensorName;
                    var sensorValue;

                    $.each(row, function(index, value) {
                       colNumber++; // skipping first column
                       if(index === "source") {
                           sensorName = value;
                       } else if(index === "timestamp") {
                           timestampVal = value.substring(0, 19);
                           // Timestamp format: "yyyy-MM-dd hh:mm:ss"
                       } else if(index === "values") {
                           sensorValue = value;
                       }
                    });

                    // Note: I only care about battery, accelerometer, gyroscope, heart_rate
                    if(sensorName === "battery") {
                        let batteryElem = doc.createElement("battery");
                        let percentageElem = doc.createElement("percentage");
                        let percentage = doc.createTextNode(sensorValue.substring(2,4)); //['98'] -> 98
                        percentageElem.appendChild(percentage);
                        batteryElem.appendChild(percentageElem);

                        let voltageElem = doc.createElement("voltage");
                        let voltage = doc.createTextNode("null");
                        voltageElem.appendChild(voltage);
                        batteryElem.appendChild(voltageElem);

                        sensorsElem.appendChild(batteryElem);
                        notesVal += "[battery-percentage: info at row=" + count + " and col=4]";

                        // Since every measurement only has 1 sensor measuring, all other sensors must be null
                        let accelerometerElem = doc.createElement("accelerometer");
                        let accelerationElem = doc.createElement("acceleration");
                        let acceleration = doc.createTextNode("null");
                        accelerationElem.appendChild(acceleration);
                        accelerometerElem.appendChild(accelerationElem);
                        sensorsElem.appendChild(accelerometerElem);
                        let gyroscopeElem = doc.createElement("gyroscope");
                        let rotationElem = doc.createElement("rotation");
                        let rotation = doc.createTextNode("null");
                        rotationElem.appendChild(rotation);
                        gyroscopeElem.appendChild(rotationElem);
                        sensorsElem.appendChild(gyroscopeElem);
                        let hrmElem = doc.createElement("hrm");
                        let heart_rateElem = doc.createElement("heart_rate");
                        let heart_rate = doc.createTextNode("null");
                        heart_rateElem.appendChild(heart_rate);
                        hrmElem.appendChild(heart_rateElem);
                        sensorsElem.appendChild(hrmElem);
                    } else if(sensorName === "accelerometer") {
                        let accelerometerElem = doc.createElement("accelerometer");
                        let accelerationElem = doc.createElement("acceleration");
                        let tmpStr = sensorValue.substring(2,sensorValue.length - 2)
                        let x = tmpStr.split("', '")[0];
                        let y = tmpStr.split("', '")[1];
                        let z = tmpStr.split("', '")[2];
                        let acceleration = doc.createTextNode(x + "," + y + "," + z);
                        accelerationElem.appendChild(acceleration);
                        accelerometerElem.appendChild(accelerationElem);
                        sensorsElem.appendChild(accelerometerElem);
                        notesVal += "[accelerometer-acceleration: info at row=" + count + " and col=4";

                        let batteryElem = doc.createElement("battery");

                        let percentageElem = doc.createElement("percentage");
                        let percentage = doc.createTextNode("null");
                        percentageElem.appendChild(percentage);
                        batteryElem.appendChild(percentageElem);
                        let voltageElem = doc.createElement("voltage");
                        let voltage = doc.createTextNode("null");
                        voltageElem.appendChild(voltage);
                        batteryElem.appendChild(voltageElem);

                        sensorsElem.appendChild(batteryElem);
                        let gyroscopeElem = doc.createElement("gyroscope");
                        let rotationElem = doc.createElement("rotation");
                        let rotation = doc.createTextNode("null");
                        rotationElem.appendChild(rotation);
                        gyroscopeElem.appendChild(rotationElem);
                        sensorsElem.appendChild(gyroscopeElem);
                        let hrmElem = doc.createElement("hrm");
                        let heart_rateElem = doc.createElement("heart_rate");
                        let heart_rate = doc.createTextNode("null");
                        heart_rateElem.appendChild(heart_rate);
                        hrmElem.appendChild(heart_rateElem);
                        sensorsElem.appendChild(hrmElem);
                    } else if(sensorName === "gyroscope") {
                        let gyroscopeElem = doc.createElement("gyroscope");
                        let rotationElem = doc.createElement("rotation");
                        let tmpStr = sensorValue.substring(2,sensorValue.length - 2)
                        let x = tmpStr.split("', '")[0];
                        let y = tmpStr.split("', '")[1];
                        let z = tmpStr.split("', '")[2];
                        let rotation = doc.createTextNode(x + "," + y + "," + z);
                        rotationElem.appendChild(rotation);
                        gyroscopeElem.appendChild(rotationElem);
                        sensorsElem.appendChild(gyroscopeElem);
                        notesVal += "[gyroscope-rotation: info at row=" + count + " and col=4";

                        let batteryElem = doc.createElement("battery");

                        let percentageElem = doc.createElement("percentage");
                        let percentage = doc.createTextNode("null");
                        percentageElem.appendChild(percentage);
                        batteryElem.appendChild(percentageElem);
                        let voltageElem = doc.createElement("voltage");
                        let voltage = doc.createTextNode("null");
                        voltageElem.appendChild(voltage);
                        batteryElem.appendChild(voltageElem);

                        sensorsElem.appendChild(batteryElem);

                        let accelerometerElem = doc.createElement("accelerometer");
                        let accelerationElem = doc.createElement("acceleration");
                        let acceleration = doc.createTextNode("null");
                        accelerationElem.appendChild(acceleration);
                        accelerometerElem.appendChild(accelerationElem);
                        sensorsElem.appendChild(accelerometerElem);
                        let hrmElem = doc.createElement("hrm");
                        let heart_rateElem = doc.createElement("heart_rate");
                        let heart_rate = doc.createTextNode("null");
                        heart_rateElem.appendChild(heart_rate);
                        hrmElem.appendChild(heart_rateElem);
                        sensorsElem.appendChild(hrmElem);
                    } else if(sensorName === "heart_rate") {
                        let hrmElem = doc.createElement("hrm");
                        let heart_rateElem = doc.createElement("heart_rate");
                        let heart_rate = doc.createTextNode(((sensorValue.substring(2)).split("'"))[0]);
                        heart_rateElem.appendChild(heart_rate);
                        hrmElem.appendChild(heart_rateElem);
                        sensorsElem.appendChild(hrmElem);
                        notesVal += "[hrm-heart_rate: info at row=" + count + " and col=4]";

                        let batteryElem = doc.createElement("battery");
                        let percentageElem = doc.createElement("percentage");
                        let percentage = doc.createTextNode("null");
                        percentageElem.appendChild(percentage);
                        batteryElem.appendChild(percentageElem);
                        let voltageElem = doc.createElement("voltage");
                        let voltage = doc.createTextNode("null");
                        voltageElem.appendChild(voltage);
                        batteryElem.appendChild(voltageElem);
                        sensorsElem.appendChild(batteryElem);
                        let accelerometerElem = doc.createElement("accelerometer");
                        let accelerationElem = doc.createElement("acceleration");
                        let acceleration = doc.createTextNode("null");
                        accelerationElem.appendChild(acceleration);
                        accelerometerElem.appendChild(accelerationElem);
                        sensorsElem.appendChild(accelerometerElem);
                        let gyroscopeElem = doc.createElement("gyroscope");
                        let rotationElem = doc.createElement("rotation");
                        let rotation = doc.createTextNode("null");
                        rotationElem.appendChild(rotation);
                        gyroscopeElem.appendChild(rotationElem);
                        sensorsElem.appendChild(gyroscopeElem);
                    } else {
                        console.log("Skipping sensor: " + sensorName);
                    }

                    if (sensorName === "battery" || sensorName === "accelerometer" || sensorName === "gyroscope" || sensorName === "heart_rate") {
                        //If the sensor wasn't one of the sensors above i do not add anything to the xml file
                        let timestampElem = doc.createElement("timestamp");
                        let timestamp = doc.createTextNode(timestampVal);
                        timestampElem.appendChild(timestamp);
                        measurementElem.appendChild(timestampElem);
                        let notesElem = doc.createElement("notes");
                        let notes = doc.createTextNode(notesVal);
                        notesElem.appendChild(notes);
                        measurementElem.appendChild(notesElem);
                        measurementElem.appendChild(sensorsElem);
                        measurementsElem.appendChild(measurementElem);
                    }
                }
            }
        });
        return measurementsElem;
    }
    function createXML_smart_vehicle(data) {
        // <measurements>
        var measurementsElem = doc.createElement("measurements");
        var count = 0;
        $.each(data, function(index, row) {
            count++;
            // In these drone logs we need to ignore the first row
            var rowNumber = index+2;
            // Magari cambiare il controllo sul TIMESTAMP perchè ho preso per adesso il timestamp del gps ma in futuro potrebbe non essere presente ergo ci vuole il timestamp preciso
            // Perchè il TIMESPAMP deve essere sempre presente
            if(row["timeStamp"] != '') {
                if(count < data.length-1) {    // Decommentare la riga per limitare i risultati cambiando la variabile count
                    var measurmentElem = doc.createElement("measurement");
                    var timestampVal;

                    var sensorsElem = doc.createElement("sensors");
                    var gpsElem = doc.createElement("gps");
                    var coordinatesElem = doc.createElement("coordinates");


                    var notesVal = "";

                    var colNumber = 1;
                    $.each(row, function(index, value) {

                        if (index === "Vehicle Speed (km/h)") {
                            var VSSElem = doc.createElement("wss");
                            var speedElem = doc.createElement("speed");
                            var vel = doc.createTextNode(value);
                            speedElem.appendChild(vel);
                            VSSElem.appendChild(speedElem);
                            sensorsElem.appendChild(VSSElem);
                            notesVal += "[wss-speed: " + "info at row=" + rowNumber + " and col=" + colNumber + "]";
                        }
                        if(index==="Accelerator Angle (%)"){
                          var potentElem= doc.createElement("potentiometer");
                          var angleElem=doc.createElement("angle");
                          var angleValue=doc.createTextNode(value);
                          angleElem.appendChild(angleValue);
                          potentElem.appendChild(angleElem);
                          sensorsElem.appendChild(potentElem);
                          notesVal += "[potentiometer-angle: " + "info at row=" + rowNumber + " and col=" + colNumber + "]";
                        }
                        if(index==="Engine Speed (RPM)"){
                            var tacometerElem=doc.createElement("tachometer");
                            var rpmElem=doc.createElement("rpm")
                            var rpmValue=doc.createTextNode(value);
                            rpmElem.appendChild(rpmValue);
                            tacometerElem.appendChild(rpmElem);
                            sensorsElem.appendChild(tacometerElem);
                        }
                        if(index === "timestamp") {
                            timestampVal = value.substring(0, 19);
                        }
                    });
                    var timestampElem = doc.createElement("timestamp");
                    var timestamp = doc.createTextNode(timestampVal);
                    timestampElem.appendChild(timestamp);
                    measurmentElem.appendChild(timestampElem);

                    //tutti i dati del sensore GPS sono impostati a null
                    var coordinatesElem=doc.createElement("coordinates")
                    var coordinatesValue = doc.createTextNode("null");
                    coordinatesElem.appendChild(coordinatesValue);
                    gpsElem.appendChild(coordinatesElem);

                    //tutti i dati del sensore di freno sono impostati a null
                    var brakeElem=doc.createElement("brake-sensor")
                    var pressureElem=doc.createElement("pressure");
                    var pressureValue=doc.createElement("null");
                    pressureElem.appendChild(pressureValue);
                    brakeElem.appendChild(pressureElem);
                    sensorsElem.appendChild(pressureElem);

                    // Tutti i dati del sensore video sono impostati a null
                    var videoElem = doc.createElement("video");
                    var videoLengthElem = doc.createElement("length");
                    var videoLength = doc.createTextNode("null");
                    videoLengthElem.appendChild(videoLength);
                    videoElem.appendChild(videoLengthElem);
                    var videoPathElem = doc.createElement("path");
                    var videoPath = doc.createTextNode("null");
                    videoPathElem.appendChild(videoPath);
                    videoElem.appendChild(videoPathElem);
                    var videoSizeElem = doc.createElement("size");
                    var videoSize = doc.createTextNode("null");
                    videoSizeElem.appendChild(videoSize);
                    videoElem.appendChild(videoSizeElem);
                    sensorsElem.appendChild(videoElem);
                    //imposto note a null
                    notesVal += "[video-length: null]";
                    notesVal += "[video-path: null]";
                    notesVal += "[video-size: null]";
                    var notesElem = doc.createElement("notes");
                    var notes = doc.createTextNode(notesVal);
                    notesElem.appendChild(notes);
                    measurmentElem.appendChild(notesElem);
                    measurmentElem.appendChild(sensorsElem);
                    measurementsElem.appendChild(measurmentElem);
                }
            }
        });
        return measurementsElem;
    }
}

// Metodo per salvare il file xml
function saveLog(data) {

    "use strict";

    var serializer = new XMLSerializer();
    var str = serializer.serializeToString(data);

    $.ajax({
        type: 'POST',
        url: 'php/saveLog.php',
        data: {
            'xml': str
        },
        success: function(response) {
            console.log("Log saved!");
            downloadLog(response);
        },
        error: function() {
            console.log("Log not saved!");
        }
    });
}

// Metodo per effettuare il download del file xml
function downloadLog(file) {

    // Sfrutto la proprietà download dell'elemento a di html per effettuare il download
    var a = document.createElement('a');
    a.href = "logs/" + file + ".xml";
    a.download = file + ".xml";
    a.click();
}