$(document).ready(function() {

    "use strict";
    var deviceType = $("#deviceType").val();
    loadSelectLog(deviceType);
    changeLog();
    changeBtnThresholType();
});

/**
 * This method loads the IDs of the logs available for the device into the form (selection)
 * @param deviceType the type of the device the program needs to show infos
 */
function loadSelectLog(deviceType) {
    var param = {
        "device_type": deviceType
    }

    function callbackLoadSelectLog(data) {
        $('#select-log').append( '<option value="0" selected disabled hidden>Choose here</option>' );
        $.each(data.results, function(index, item) {
            $('#select-log').append( '<option value="' + item.id + '">' + item.id + '</option>' );
        });
    }

    $.postJSON("Log", "getAllId", param, callbackLoadSelectLog);
}

/**
 * This method changes the Threshold button (% -> abs -> % ...)
 */
function changeBtnThresholType() {

    $('#btn-threshold-type').off().on('click', function() {
        if($(this).val() === 'percentage') {
            $(this).val("absolute");
            $(this).text("abs")
        } else {
            $(this).val("percentage");
            $(this).text("%")
        }
    });
}

/**
 * This method updates the page to show the information of the new log selected.
 */
function changeLog() {

    $('#select-log').off().on('change', function() {
        if (Number($('#select-log option:selected').val()) !== 0) {
            if ($('#threshold').val() > 0 && $('#threshold-range').val() > 0 && $('#threshold-marker').val() > 0) {
                $(".empty-data").remove();
                $("#report-content").removeAttr("hidden");
                var thresholdTrendlinePercentage = $("#threshold").val();
                var thresholdRangePercentage = $("#threshold-range").val();
                var markerPercentage = $("#threshold-marker").val();
                var trendline = $("#select-trendline").val();
                getLog(this.value, thresholdTrendlinePercentage, thresholdRangePercentage, markerPercentage, trendline);
            }
        } else {
            console.log("Controlla bene l'input!");
        }
    });

    $('#select-trendline').off().on('change', function() {
        if (Number($('#select-log option:selected').val()) !== 0) {
            if ($('#threshold').val() > 0 && $('#threshold-range').val() > 0 && $('#threshold-marker').val() > 0) {
                $(".empty-data").remove();
                $("#report-content").removeAttr("hidden");
                var thresholdPercentage = $("#threshold").val();
                var thresholdRangePercentage = $("#threshold-range").val();
                var markerPercentage = $("#threshold-marker").val();
                var trendline = $("#select-trendline").val();
                getLog($('#select-log').val(), thresholdPercentage, thresholdRangePercentage, markerPercentage, trendline);
            }
        } else {
            console.log("Controlla bene l'input!");
        }
    });

    $('#btn-refresh').off().on('click', function() {
        if (Number($('#select-log option:selected').val()) !== 0) {
            if ($('#threshold').val() > 0 && $('#threshold-range').val() > 0 && $('#threshold-marker').val() > 0) {
                $(".empty-data").remove();
                $("#report-content").removeAttr("hidden");
                var thresholdPercentage = $("#threshold").val();
                var thresholdRangePercentage = $("#threshold-range").val();
                var markerPercentage = $("#threshold-marker").val();
                var trendline = $("#select-trendline").val();
                getLog($('#select-log').val(), thresholdPercentage, thresholdRangePercentage, markerPercentage, trendline);
            }
        } else {
            console.log("Controlla bene l'input!");
        }
    });
}

/**
 * This method loads the informations of the selected log using function callbackGetLog
 * callbackGetLog updates the various forms in the page (charts, information forms and more...)
 * @param id_log
 * @param thresholdTrendlinePercentage
 * @param thresholdRangePercentage
 * @param markerPercentage
 * @param trendline the chosen trendline
 */
function getLog(id_log, thresholdTrendlinePercentage, thresholdRangePercentage, markerPercentage, trendline) {

    // Pulisco le cards prima di riempirle nuovamente
    $('#card-report-drone').children("p").html("");
    $('#card-report-digital-investigator').children("p").html("");
    $('#card-report-acquisition').children("p").html("");

    let deviceType = $("#deviceType").val();
    var param = {
        "device_type": deviceType,
        "id_log": id_log
    }

    function callbackGetLog(data) {

        var log = data.results[0];

        $("#card-report-drone").append(
            '<p class="card-text">Brand: <span>' + log.device_brand + '</span><br>' +
            'Model: <span>' + log.device_model + '</span><br>'
        );

        $("#card-report-digital-investigator").append(
            '<p class="card-text">Name: <span>' + log.df_name + '</span><br>' +
            'Surname: <span>' + log.df_surname + '</span><br>' +
            'Agency: <span>' + log.df_agency + '</span><br>' +
            'Category: <span>' + log.df_category + '</span><br>' +
            'Specialization: <span>' + log.df_specialization + '</span>'
        );

        $("#card-report-acquisition").append(
            '<p class="card-text">Report number: <span>' + log.report_number + '</span><br>' +
            'Nation: <span>' + log.acquisition_place.split("-")[0] + '</span><br>' +
            'City: <span>' + log.acquisition_place.split("-")[1] + '</span><br>' +
            'Street: <span>' + log.acquisition_place.split("-")[2] + '</span><br>' +
            'Notes: <span>' + log.acquisition_notes + '</span><br>'
        );

        generateTable(data, 0, 10);

        changePagination(data);

        changeSingleChart(data, thresholdTrendlinePercentage, thresholdRangePercentage, trendline);

        let device_type = $("#deviceType").val();
        if(device_type == 'Drone') {
            var coordinates = getDistinctCoordinates(data);
            generateMap(coordinates, markerPercentage);
        }
    }

    $.postJSON("Log", "getLogById", param, callbackGetLog);
}

/**
 * Generates the table showing the rows in the database about the chosen log
 * @param data
 * @param fromResult
 * @param toResult
 */
function generateTable(data, fromResult, toResult) {

    "use strict";

    // Pulisco la tabella prima di disegnarla
    $('#table-head').children().html("");
    $('#table-body').children().html("");

    var keys = Object.keys(data.results[0]);
    $.each(keys, function(index, item) {
        if(item.match("timestamp") || item.match("battery") || item.match("barometer") || item.match("gps") || item.match("photo") || item.match("video") || item.match("hrm") || item.match("accelerometer") || item.match("barometer") || item.match("brake_sensor") || item.match("gyroscope") || item.match("potentiometer") || item.match("tachometer") || item.match("wss")) {
            if(item.match("brand") || item.match("model")) {
                // NO-OP
            } else {
                $('#table-head').children().append('<th scope="col">' + item + '</th>');
            }
        }
    });

    $.each(data.results, function(index, row) {
        if (index >= fromResult && index < toResult) {
            var html = '<tr>';
            $.each(row, function(index, item) {
                if (index.match("timestamp")) {
                    html += '<th scope="row">' + item + '</td>';
                } else {
                    if(index.match("battery") || index.match("barometer") || index.match("gps") || index.match("photo") || index.match("video") || index.match("hrm") || index.match("acceleration") || index.match("pressure") || index.match("rotation") || index.match("accelerator_angle") || index.match("rpm") || index.match("speed")) {
                        if(index.match("brand") || index.match("model")) {
                            // NO-OP
                        } else {
                            html += '<td>' + item + '</td>';
                        }
                    }
                }
            });
            html += '</tr>'
            $('#table-body').append(html);
        }
    });

}

/**
 * Changes the chart (about the single sensor) shown in the page
 * @param data
 * @param thresholdTrendlinePercentage
 * @param thresholdRangePercentage
 * @param trendline
 */
function changeSingleChart(data, thresholdTrendlinePercentage, thresholdRangePercentage, trendline) {

    /**
     * Changes the chart for drone pages
     * @param data
     * @param thresholdTrendlinePercentage
     * @param thresholdRangePercentage
     * @param trendline
     */
    function changeSingleChart_drone(data, thresholdTrendlinePercentage, thresholdRangePercentage, trendline) {

        /**
         * Method to get the count of the current sensor
         * @param sensor
         * @returns {number}
         */
        function getSensorCount_drone(sensor) {
            var count = 0;
            switch(sensor) {
                case "battery":
                    count = 0;
                    break;
                case "barometer":
                    count = 1;
                    break;
                case "gps":
                    count = 2;
                    break;
                case "photo":
                    count = 3;
                    break;
                case "video":
                    count = 4;
                    break;
            }
            return count;
        }

        /**
         * Method to calculate the speed of the drone for each point
         * @param timestamp
         * @param coordinates
         * @returns {*[]}
         */
        function getSpeedArray(timestamp, coordinates) {
            var values = [];
            var speed = 0;
            var lastJ = 0;
            for(var i = 0; i < coordinates.length; i++) {
                if(i === 0) {
                    values.push(speed.toFixed(5));
                } else {
                    var latitudeA = coordinates[i].split(",")[0];
                    var longitudeA = coordinates[i].split(",")[1];
                    var timestampA = timestamp[i].split(" ");
                    var timeA = new Date(timestampA[0].split("-")[0], timestampA[0].split("-")[1], timestampA[0].split("-")[2], timestampA[1].split(":")[0], timestampA[1].split(":")[1], timestampA[1].split(":")[2]).getTime();

                    var latitudeB = coordinates[i].split(",")[0];
                    var longitudeB = coordinates[i].split(",")[1];
                    var timestampB = timestamp[i].split(" ");
                    var timeB = new Date(timestampB[0].split("-")[0], timestampB[0].split("-")[1], timestampB[0].split("-")[2], timestampB[1].split(":")[0], timestampB[1].split(":")[1], timestampB[1].split(":")[2]).getTime();
                    if(timeA === timeB) {
                        for (var j = i+1; j < coordinates.length; j++) {
                            timestampB = timestamp[j].split(" ");
                            timeB = new Date(timestampB[0].split("-")[0], timestampB[0].split("-")[1], timestampB[0].split("-")[2], timestampB[1].split(":")[0], timestampB[1].split(":")[1], timestampB[1].split(":")[2]).getTime();
                            if (timeA === timeB) {
                                values.push(speed.toFixed(5));
                            } else {
                                lastJ = j;
                                latitudeB = coordinates[j].split(",")[0];
                                longitudeB = coordinates[j].split(",")[1];
                                speed = calculateSpeed(timeA, latitudeA, longitudeA, timeB, latitudeB, longitudeB);
                                values.push(speed.toFixed(5));
                                i = lastJ + 1;
                                break;
                            }
                        }
                    } else {
                        speed = calculateSpeed(timeA, latitudeA, longitudeA, timeB, latitudeB, longitudeB).toFixed(2);
                        values.push(speed.toFixed(5));
                    }
                }
            }
            for (var i = values.length; i < coordinates.length; i++) {
                values.push(speed.toFixed(5));
            }
            return values;
        }

        /**
         * Method to calculate the coordinates of the gps for each point
         * @param data
         * @returns {*[]}
         */
        function getCoordinates(data) {
            var values = [];
            $.each(data.results, function(index, row) {
                $.each(row, function(index, item) {
                    if (index.match("gps_coordinates")) {
                        values.push(item);
                    }
                });
            });
            return values;
        }


        var count = 0;
        var sensors = ["battery", "barometer", "gps", "photo", "video"];
        var lineLabels = ["Voltage", "Altitude", "# Satellites", "Photo", "Video"];

        count = getSensorCount_drone($("#sensor-name").text());

        var trendlineData = [];
        switch(trendline) {
            case 'linear':
                var dataForTrendline = changeIndexValues(getSensorMeasurementValues_drone(sensors[count], data));
                trendlineData = getLinearTrendline(dataForTrendline);
                break;
            case 'frequent':
                trendlineData = getStaticMostFrequentValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                break;
            case 'avg':
                trendlineData = getStaticAverageValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                break;
            case 'min':
                trendlineData = getStaticMinValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                break;
            case 'max':
                trendlineData = getStaticMaxValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                break;
        }

        // Carico subito il sensore battery
        genereteSingleChart(lineLabels[count], getSensorMeasurementLabels(data), getSensorMeasurementValues_drone(sensors[count], data), trendlineData, thresholdTrendlinePercentage, thresholdRangePercentage);

        var arrayBattery = getSensorMeasurementValues_drone("battery", data);
        var arrayBarometer = etSensorMeasurementValues_drone("barometer", data);
        var arrayGPS = getSensorMeasurementValues_drone("gps", data);

        var arrayCoordinates = getCoordinates(data);
        var arraySpeed = getSpeedArray(getSensorMeasurementLabels(data), arrayCoordinates);

        generateMultipleChart_drone(getSensorMeasurementLabels(data), arrayBattery, arrayBarometer, arrayGPS, arraySpeed);


        $('.btn-forward').off().on('click', function() {
            count = getSensorCount_drone($("#sensor-name").text());
            count++;

            if (count >= sensors.length) {
                count = 0;
            }
            var sensor = sensors[count];
            var lineLabel = lineLabels[count];

            var thresholdTrendlinePercentage = $("#threshold").val();
            var thresholdRangePercentage = $("#threshold-range").val();

            var trendline = $("#select-trendline").val();
            var trendlineData = [];
            switch(trendline) {
                case 'linear':
                    var dataForTrendline = changeIndexValues(getSensorMeasurementValues_drone(sensors[count], data));
                    trendlineData = getLinearTrendline(dataForTrendline);
                    break;
                case 'frequent':
                    trendlineData = getStaticMostFrequentValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                    break;
                case 'avg':
                    trendlineData = getStaticAverageValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                    break;
                case 'min':
                    trendlineData = getStaticMinValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                    break;
                case 'max':
                    trendlineData = getStaticMaxValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                    break;
            }

            $("#sensor-name").val(sensor);
            $("#sensor-name").text(sensor);
            genereteSingleChart(lineLabel, getSensorMeasurementLabels(data), getSensorMeasurementValues_drone(sensor, data), trendlineData, thresholdTrendlinePercentage, thresholdRangePercentage);

            var arrayBattery = getSensorMeasurementValues_drone("battery", data);
            var arrayBarometer = etSensorMeasurementValues_drone("barometer", data);
            var arrayGPS = getSensorMeasurementValues_drone("gps", data);

            var arrayCoordinates = getCoordinates(data);
            var arraySpeed = getSpeedArray(getSensorMeasurementLabels(data), arrayCoordinates);

            generateMultipleChart_drone(getSensorMeasurementLabels(data), arrayBattery, arrayBarometer, arrayGPS, arraySpeed);

        });

        $('.btn-back').off().on('click', function() {

            count = getSensorCount_drone($("#sensor-name").text());
            count--;

            if (count < 0) {
                count = sensors.length-1;
            }
            var sensor = sensors[count];
            var lineLabel = lineLabels[count];

            var thresholdTrendlinePercentage = $("#threshold").val();
            var thresholdRangePercentage = $("#threshold-range").val();

            var trendline = $("#select-trendline").val();
            var trendlineData = [];
            switch(trendline) {
                case 'linear':
                    var dataForTrendline = changeIndexValues(getSensorMeasurementValues_drone(sensors[count], data));
                    trendlineData = getLinearTrendline(dataForTrendline);
                    break;
                case 'frequent':
                    trendlineData = getStaticMostFrequentValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                    break;
                case 'avg':
                    trendlineData = getStaticAverageValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                    break;
                case 'min':
                    trendlineData = getStaticMinValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                    break;
                case 'max':
                    trendlineData = getStaticMaxValueTrendline(getSensorMeasurementValues_drone(sensors[count], data));
                    break;
            }

            $("#sensor-name").val(sensor);
            $("#sensor-name").text(sensor);
            genereteSingleChart(lineLabel, getSensorMeasurementLabels(data), getSensorMeasurementValues_drone(sensor, data), trendlineData, thresholdTrendlinePercentage, thresholdRangePercentage);

            var arrayBattery = getSensorMeasurementValues_drone("battery", data);
            var arrayBarometer = etSensorMeasurementValues_drone("barometer", data);
            var arrayGPS = getSensorMeasurementValues_drone("gps", data);

            var arrayCoordinates = getCoordinates(data);
            var arraySpeed = getSpeedArray(getSensorMeasurementLabels(data), arrayCoordinates);

            generateMultipleChart_drone(getSensorMeasurementLabels(data), arrayBattery, arrayBarometer, arrayGPS, arraySpeed);

        });
    }

    /**
     * Changes the chart for smart vehicle pages
     * @param data
     * @param thresholdTrendlinePercentage
     * @param thresholdRangePercentage
     * @param trendline
     */
    function changeSingleChart_smartvehicle(data, thresholdTrendlinePercentage, thresholdRangePercentage, trendline) {

        /**
         * Method to get the count of the current sensor
         * @param sensor
         * @returns {number}
         */
        function getSensorCount_sv(sensor) {
            var count = 0;
            switch(sensor) {
                case "tachometer":
                    count = 0;
                    break;
                case "wss":
                    count = 1;
                    break;
                case "potentiometer":
                    count = 2;
                    break;
                case "brake_sensor":
                    count = 3;
                    break;
            }
            return count;
        }

        var count = 0;
        var sensors = ["tachometer", "wss", "potentiometer", "brake_sensor"];
        var lineLabels = ["RPM", "Speed", "Accelerator angle", "Brake pressure"];

        count = getSensorCount_sv($("#sensor-name").text());

        var trendlineData = [];
        switch(trendline) {
            case 'linear':
                var dataForTrendline = changeIndexValues(getSensorMeasurementValues_sv(sensors[count], data));
                trendlineData = getLinearTrendline(dataForTrendline);
                break;
            case 'frequent':
                trendlineData = getStaticMostFrequentValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                break;
            case 'avg':
                trendlineData = getStaticAverageValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                break;
            case 'min':
                trendlineData = getStaticMinValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                break;
            case 'max':
                trendlineData = getStaticMaxValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                break;
        }

        genereteSingleChart(lineLabels[count], getSensorMeasurementLabels(data), getSensorMeasurementValues_sv(sensors[count], data), trendlineData, thresholdTrendlinePercentage, thresholdRangePercentage);

        var arrayTachometer = getSensorMeasurementValues_sv("tachometer", data);
        var arrayWss = getSensorMeasurementValues_sv("wss", data);
        var arrayPotentiometer = getSensorMeasurementValues_sv("potentiometer", data);
        var arrayBrakeSensor = getSensorMeasurementValues_sv("brake_sensor", data);

        generateMultipleChart_smartvehicle(getSensorMeasurementLabels(data), arrayTachometer, arrayWss, arrayPotentiometer, arrayBrakeSensor);


        $('.btn-forward').off().on('click', function() {
            count = getSensorCount_sv($("#sensor-name").text());
            count++;

            if (count >= sensors.length) {
                count = 0;
            }
            var sensor = sensors[count];
            var lineLabel = lineLabels[count];

            var thresholdTrendlinePercentage = $("#threshold").val();
            var thresholdRangePercentage = $("#threshold-range").val();

            var trendline = $("#select-trendline").val();
            var trendlineData = [];
            switch(trendline) {
                case 'linear':
                    var dataForTrendline = changeIndexValues(getSensorMeasurementValues_sv(sensors[count], data));
                    trendlineData = getLinearTrendline(dataForTrendline);
                    break;
                case 'frequent':
                    trendlineData = getStaticMostFrequentValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                    break;
                case 'avg':
                    trendlineData = getStaticAverageValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                    break;
                case 'min':
                    trendlineData = getStaticMinValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                    break;
                case 'max':
                    trendlineData = getStaticMaxValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                    break;
            }

            $("#sensor-name").val(sensor);
            $("#sensor-name").text(sensor);
            genereteSingleChart(lineLabel, getSensorMeasurementLabels(data), getSensorMeasurementValues_sv(sensor, data), trendlineData, thresholdTrendlinePercentage, thresholdRangePercentage);

            var arrayTachometer = getSensorMeasurementValues_sv("tachometer", data);
            var arrayWss = getSensorMeasurementValues_sv("wss", data);
            var arrayPotentiometer = getSensorMeasurementValues_sv("potentiometer", data);
            var arrayBrakeSensor = getSensorMeasurementValues_sv("brake_sensor", data);

            generateMultipleChart_smartvehicle(getSensorMeasurementLabels(data), arrayTachometer, arrayWss, arrayPotentiometer, arrayBrakeSensor);

        });

        $('.btn-back').off().on('click', function() {

            count = getSensorCount_sv($("#sensor-name").text());
            count--;

            if (count < 0) {
                count = sensors.length-1;
            }
            var sensor = sensors[count];
            var lineLabel = lineLabels[count];

            var thresholdTrendlinePercentage = $("#threshold").val();
            var thresholdRangePercentage = $("#threshold-range").val();

            var trendline = $("#select-trendline").val();
            var trendlineData = [];
            switch(trendline) {
                case 'linear':
                    var dataForTrendline = changeIndexValues(getSensorMeasurementValues_sv(sensors[count], data));
                    trendlineData = getLinearTrendline(dataForTrendline);
                    break;
                case 'frequent':
                    trendlineData = getStaticMostFrequentValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                    break;
                case 'avg':
                    trendlineData = getStaticAverageValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                    break;
                case 'min':
                    trendlineData = getStaticMinValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                    break;
                case 'max':
                    trendlineData = getStaticMaxValueTrendline(getSensorMeasurementValues_sv(sensors[count], data));
                    break;
            }

            $("#sensor-name").val(sensor);
            $("#sensor-name").text(sensor);
            genereteSingleChart(lineLabel, getSensorMeasurementLabels(data), getSensorMeasurementValues_drone(sensor, data), trendlineData, thresholdTrendlinePercentage, thresholdRangePercentage);

            var arrayTachometer = getSensorMeasurementValues_sv("tachometer", data);
            var arrayWss = getSensorMeasurementValues_sv("wss", data);
            var arrayPotentiometer = getSensorMeasurementValues_sv("potentiometer", data);
            var arrayBrakeSensor = getSensorMeasurementValues_sv("brake_sensor", data);

            generateMultipleChart_smartvehicle(getSensorMeasurementLabels(data), arrayTachometer, arrayWss, arrayPotentiometer, arrayBrakeSensor);
        });
    }

    /**
     * Changes the chart for wearable pages
     * @param data
     * @param thresholdTrendlinePercentage
     * @param thresholdRangePercentage
     * @param trendline
     */
    function changeSingleChart_wearable(data, thresholdTrendlinePercentage, thresholdRangePercentage, trendline) {

        /**
         * Method to get the count of the current sensor
         * @param sensor
         * @returns {number}
         */
        function getSensorCount_wearable(sensor) {
            var count = 0;
            switch(sensor) {
                case "battery":
                    count = 0;
                    break;
                case "accelerometer":
                    count = 1;
                    break;
                case "gyroscope":
                    count = 2;
                    break;
                case "hrm":
                    count = 3;
                    break;
            }
            return count;
        }

        var count = 0;
        var sensors = ["battery", "accelerometer", "gyroscope", "hrm"];
        var lineLabels = ["Percentage", "Acceleration", "Rotation", "Heart rate"];

        count = getSensorCount_wearable($("#sensor-name").text());

        /*
        Only first load uses this slice of code. (i.e. Drone uses it to load battery)
         */
        var trendlineData = [];
        switch(trendline) {
            case 'linear':
                var dataForTrendline = changeIndexValues(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                trendlineData = getLinearTrendline(dataForTrendline);
                break;
            case 'frequent':
                trendlineData = getStaticMostFrequentValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                break;
            case 'avg':
                trendlineData = getStaticAverageValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                break;
            case 'min':
                trendlineData = getStaticMinValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                break;
            case 'max':
                trendlineData = getStaticMaxValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                break;
        }

        // Carico subito il sensore battery

        genereteSingleChart(lineLabels[count], getSensorMeasurementValues_wearable_notNull(sensors[count], data), getSensorMeasurementValues_wearable_notNull(sensors[count], data), trendlineData, thresholdTrendlinePercentage, thresholdRangePercentage);

        var arrayBattery = getSensorMeasurementValues_wearable("battery", data);
        var arrayAcceleration = getAcceleration(getSensorMeasurementValues_wearable("accelerometer", data));
        var arrayRotation = getRotation(getSensorMeasurementValues_wearable("gyroscope", data));
        var arrayHeartRate = getSensorMeasurementValues_wearable("hrm", data);

        generateMultipleChart_wearable(getSensorMeasurementLabels(data), arrayBattery, arrayAcceleration, arrayRotation, arrayHeartRate);


        $('.btn-forward').off().on('click', function() {
            count = getSensorCount_wearable($("#sensor-name").text());
            count++;

            if (count >= sensors.length) {
                count = 0;
            }
            var sensor = sensors[count];
            var lineLabel = lineLabels[count];

            var thresholdTrendlinePercentage = $("#threshold").val();
            var thresholdRangePercentage = $("#threshold-range").val();

            var trendline = $("#select-trendline").val();
            var trendlineData = [];

            /*
                Loading new sensors thresholds
             */
            switch(trendline) {
                case 'linear':
                    var dataForTrendline = changeIndexValues(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                    trendlineData = getLinearTrendline(dataForTrendline);
                    break;
                case 'frequent':
                    trendlineData = getStaticMostFrequentValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                    break;
                case 'avg':
                    trendlineData = getStaticAverageValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                    break;
                case 'min':
                    trendlineData = getStaticMinValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                    break;
                case 'max':
                    trendlineData = getStaticMaxValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                    break;
            }

            $("#sensor-name").val(sensor);
            $("#sensor-name").text(sensor);
            genereteSingleChart(lineLabel, getSensorMeasurementLabels_notNull(data, sensor), getSensorMeasurementValues_wearable_notNull(sensor, data), trendlineData, thresholdTrendlinePercentage, thresholdRangePercentage);

            var arrayBattery = getSensorMeasurementValues_wearable("battery", data);
            var arrayAcceleration = getAcceleration(getSensorMeasurementValues_wearable("accelerometer", data));
            var arrayRotation = getRotation(getSensorMeasurementValues_wearable("gyroscope", data));
            var arrayHeartRate = getSensorMeasurementValues_wearable("hrm", data);

            generateMultipleChart_wearable(getSensorMeasurementLabels(data), arrayBattery, arrayAcceleration, arrayRotation, arrayHeartRate);
        });

        $('.btn-back').off().on('click', function() {

            count = getSensorCount_wearable($("#sensor-name").text());
            count--;

            if (count < 0) {
                count = sensors.length-1;
            }
            var sensor = sensors[count];
            var lineLabel = lineLabels[count];

            var thresholdTrendlinePercentage = $("#threshold").val();
            var thresholdRangePercentage = $("#threshold-range").val();

            var trendline = $("#select-trendline").val();
            var trendlineData = [];
            switch(trendline) {
                case 'linear':
                    var dataForTrendline = changeIndexValues(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                    trendlineData = getLinearTrendline(dataForTrendline);
                    break;
                case 'frequent':
                    trendlineData = getStaticMostFrequentValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                    break;
                case 'avg':
                    trendlineData = getStaticAverageValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                    break;
                case 'min':
                    trendlineData = getStaticMinValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                    break;
                case 'max':
                    trendlineData = getStaticMaxValueTrendline(getSensorMeasurementValues_wearable_notNull(sensors[count], data));
                    break;
            }

            $("#sensor-name").val(sensor);
            $("#sensor-name").text(sensor);
            genereteSingleChart(lineLabel, getSensorMeasurementLabels_notNull(data, sensor), getSensorMeasurementValues_wearable_notNull(sensor, data), trendlineData, thresholdTrendlinePercentage, thresholdRangePercentage);

            var arrayBattery = getSensorMeasurementValues_wearable("battery", data);
            var arrayAcceleration = getAcceleration(getSensorMeasurementValues_wearable("accelerometer", data));
            var arrayRotation = getRotation(getSensorMeasurementValues_wearable("gyroscope", data));
            var arrayHeartRate = getSensorMeasurementValues_wearable("hrm", data);

            generateMultipleChart_wearable(getSensorMeasurementLabels(data), arrayBattery, arrayAcceleration, arrayRotation, arrayHeartRate);

        });
    }

    var device_type = $("#deviceType").val();

    switch (device_type) {
        case "Drone":
            changeSingleChart_drone(data, thresholdTrendlinePercentage, thresholdRangePercentage, trendline);
            break;
        case "Smart vehicle":
            changeSingleChart_smartvehicle(data, thresholdTrendlinePercentage, thresholdRangePercentage, trendline);
            break;
        case "Wearable":
            changeSingleChart_wearable(data, thresholdTrendlinePercentage, thresholdRangePercentage, trendline);
            break;
        default:
            console.log("Unable to generate chart for device: " + device_type);
    }
}

/**
 * Generates the chart of the single sensor
 * @param lineLabel the name of the sensor
 * @param labels the values on the x-axis
 * @param data the values of the sensor
 * @param trendlineData
 * @param thresholdTrendlinePercentage
 * @param thresholdRangePercentage
 */
function genereteSingleChart(lineLabel, labels, data, trendlineData, thresholdTrendlinePercentage, thresholdRangePercentage) {

    /**
     * Method to generate the radial chart of threshold
     * @param numTotal
     * @param numthresholdIn
     * @param numthresholdOut
     */
    function generateRadialChart(numTotal, numthresholdIn, numthresholdOut) {

        if (window.radialChart != undefined) {
            window.radialChart.destroy();
        }

        var percIn = ((numthresholdIn / numTotal) * 100).toFixed(2);
        var percOut = ((numthresholdOut / numTotal) * 100).toFixed(2);

        var options = {
            series: [percIn, percOut],
            chart: {
                type: 'radialBar',
            },
            colors: ['#0acf97', '#fa5c7c', ],
            labels: ['Threshold in', 'Threshold out'],
            legend: {
                show: true,
                floating: true,
                position: 'bottom',
                labels: {
                    useSeriesColors: true,
                },
                markers: {
                    size: 0
                },
                formatter: function(seriesName) {
                    if (seriesName === 'Threshold in') {
                        return seriesName + ":  " + numthresholdIn
                    } else if (seriesName === 'Threshold out') {
                        return seriesName + ":  " + numthresholdOut
                    }
                },
            },
            plotOptions: {
                radialBar: {
                    dataLabels: {
                        value: {
                            show: true,
                        },
                        total: {
                            show: true,
                            label: 'Total',
                            formatter: function() {
                                return numTotal;
                            }
                        }
                    }
                }
            }
        };


        window.radialChart = new ApexCharts($("#custom-chart-radial")[0], options);
        radialChart.render();
    }

    /**
     * Method to generate the line chart of the threshold
     * @param lineLabel
     * @param labels
     * @param data
     * @param dataOutThreshold
     */
    function genereteSingleChartColored(lineLabel, labels, data, dataOutThreshold) {

        if (window.chartColored != undefined) {
            window.chartColored.destroy();
        }

        var options = {
            chart: {
                type: 'line',
                animations: {
                    enabled: false
                },
                zoom: {
                    enabled: false,
                }
            },
            fill: {
                type: 'solid'
            },
            colors: ['#0acf97', '#fa5c7c'],
            markers: {
                size: 0,
                strokeWidth: 0,
                strokeColors: '#0acf97',
                hover: {
                    size: 0,
                }
            },
            stroke: {
                width: [2, 2],
                dashArray: [0, 0]
            },
            series: [{
                name: lineLabel + " - Threshold in ",
                data: data,
            },
                {
                    name: lineLabel + " - Threshold out",
                    data: dataOutThreshold,
                }
            ],
            xaxis: {
                type: 'category',
                categories: labels,
                labels: {
                    show: false,
                }
            },
            yaxis: {
                labels: {
                    // Tronco i valori dell'asse Y
                    // Informazione importante per la trendline
                    formatter: function(value) {
                        return Math.trunc(value);
                    }
                }
            }
        }

        window.chartColored = new ApexCharts($("#custom-chart-line-2")[0], options);
        chartColored.render();
    }

    if (window.chartZoom != undefined) {
        window.chartZoom.destroy();
    }

    // Converto gli indici dei timestamp in numeri in modo tale da poterci fare inferenza e rendere più veloce il rendering del grafico
    var labelsCounted = convertIndexInCount(labels);

    // Se è selezionato % lo trasformo in percentuale, altrimenti tengo il valore assoluto
    var thresholdTrendline = Number(thresholdTrendlinePercentage);
    if($("#btn-threshold-type").val() === 'percentage') {
        // Mi basta un solo valore per ottenere la soglia di threshold dato che la trendline è lineare
        // Fatto ciò mi prendo l'intero
        thresholdTrendline = parseInt((thresholdTrendlinePercentage / 100) * trendlineData[0]);
    }

    var thresholdRange = parseInt((thresholdRangePercentage / 100) * data.length);

    var dataOutThresholdTrendline = [];
    for(var i = 0; i < trendlineData.length; i++) {
        var scarto = trendlineData[i] - data[i];
        var value = Math.abs(scarto);
        if(value <= thresholdTrendline) {
            dataOutThresholdTrendline.push(null);
        } else {
            dataOutThresholdTrendline.push(Number(data[i]));
        }
    }

    var dataTrendilineUpperLimit = getTrendlineUpperLimit(trendlineData, thresholdTrendline);
    var dataTrendilineLowerLimit = getTrendlineLowerLimit(trendlineData, thresholdTrendline);

    var thresholdTrenlineValues = getInOutThresholdNumber(data, trendlineData, thresholdTrendline);

    generateRadialChart(data.length, thresholdTrenlineValues.inThreshold, thresholdTrenlineValues.outThreshold);
    genereteSingleChartColored(lineLabel, labels, data, dataOutThresholdTrendline);

    var options = {
        chart: {
            type: 'line',
            animations: {
                enabled: false
            },
        },
        fill: {
            type: 'solid'
        },
        colors: ['#727cf5', '#fa5c7c', '#ffbc00', '#ffbc00'],
        markers: {
            size: 0
        },
        stroke: {
          width: [2, 2, 1, 1],
          dashArray: [0, 5, 5, 5]
        },
        series: [{
                name: lineLabel,
                data: data,
            },
            {
                name: "Trendline",
                data: trendlineData,
            },
            {
                name: "Upper bound",
                data: dataTrendilineUpperLimit,
            },
            {
                name: "Lower bound",
                data: dataTrendilineLowerLimit,
            }
        ],
        xaxis: {
            type: 'numeric',
            categories: labelsCounted,
            labels: {
                show: false
            }
        },
        tooltip: {
            x: {
                formatter: function (val) {
                    return labels[val];
                }
            }
        },
        yaxis: {
            labels: {
                // Tronco i valori dell'asse Y
                // Informazione importante per la trendline
                formatter: function(value) {
                    return Math.trunc(value);
                }
            },
            axisTicks: {
              //show: true,
            },
            tooltip: {
              //enabled: true
            }
        }
    }

    window.chartZoom = new ApexCharts($("#custom-chart-line-1")[0], options);
    chartZoom.render();

    /*
    Adding unusual highlights
     */
    var dataOutUpperThresholdTrendline = getUpperBoundData(data, dataTrendilineUpperLimit);
    var dataOutLowerThresholdTrendline = getLowerBoundData(data, dataTrendilineLowerLimit);

    //Defining areas (intervals x1-x2) to highlight
    var upperRangeValues = getRangeThreshold(dataOutUpperThresholdTrendline, thresholdRange);
    var lowerRangeValues = getRangeThreshold(dataOutLowerThresholdTrendline, thresholdRange);

    if (window.dangerValues != undefined) {
        window.dangerValues = [];
    }
    window.dangerValues = [];
    dangerValues.push(upperRangeValues)
    dangerValues.push(lowerRangeValues)

    //Aggiungo dinamicamente le annotazioni per l'asse delle x sopra il limite della threshold
    for(var i=0; i < upperRangeValues.length; i++) {
        var firstX = upperRangeValues[i][0];
        var lastX = upperRangeValues[i][1];
        chartZoom.addXaxisAnnotation({
            x: Number(firstX),
            x2: Number(lastX),
            borderColor: '#0acf97',
            fillColor: '#0acf97',
            label: {
                borderColor: '#0acf97',
                style: {
                    color: '#fff',
                    background: '#0acf97'
                },
                text: 'Unusual upper bound behavior'
            }
        });
    }

    //Aggiungo dinamicamente le annotazioni per l'asse delle x sotto il limite della threshold
    for(var i=0; i < lowerRangeValues.length; i++) {
        var firstX = lowerRangeValues[i][0];
        var lastX = lowerRangeValues[i][1];
        chartZoom.addXaxisAnnotation({
            x: Number(firstX),
            x2: Number(lastX),
            borderColor: '#fa5c7c',
            fillColor: '#fa5c7c',
            label: {
                borderColor: '#fa5c7c',
                style: {
                    color: '#fff',
                    background: '#fa5c7c'
                },
                text: 'Unusual lower bound behavior'
            }
        });
    }
}

/**
 * Method to generate the chart with all sensors together for drone devices
 * @param labels
 * @param batteryData
 * @param barometerData
 * @param gpsData
 * @param speedData
 */
function generateMultipleChart_drone(labels, batteryNotNormalized, barometerNotNormalized, gpsNotNormalized, speedNotNormalized) {
    if (window.chartMulti != undefined) {
        window.chartMulti.destroy();
    }

    // Converto gli indici dei timestamp in numeri in modo tale da poterci fare inferenza e rendere più veloce il rendering del grafico
    var labelsCounted = convertIndexInCount(labels);

    let batteryData = normalizeArray(batteryNotNormalized);
    let barometerData = normalizeArray(barometerNotNormalized);
    let gpsData = normalizeArray(gpsNotNormalized);
    let speedData = normalizeArray(speedNotNormalized);

    var options = {
        chart: {
            type: 'line',
            animations: {
                enabled: false
            },
        },
        fill: {
            type: 'solid'
        },
        colors: ['#727cf5', '#0acf97', '#fa5c7c', '#ffbc00'],
        markers: {
            size: 0
        },
        stroke: {
          width: [1, 1, 1, 1],
          dashArray: [0, 0, 0, 0]
        },
        series: [{
                name: "Voltage",
                data: batteryData,
            },
            {
                name: "Altitude",
                data: barometerData,
            },
            {
                name: "# Satellites",
                data: gpsData,
            },
            {
                name: "Speed",
                data: speedData,
            }
        ],
        xaxis: {
            type: 'numeric',
            categories: labelsCounted,
            labels: {
                show: false
            }
        },
        tooltip: {
            x: {
                formatter: function (val) {
                    return labels[val];
                }
            }
        },
        yaxis: {
            labels: {
                formatter: function(value) {
                    return value.toFixed(5);
                }
            }
        }
    }

    window.chartMulti = new ApexCharts($("#custom-chart-line-3")[0], options);
    chartMulti.render();

    //Adding highlighted intervals
    let range = [];
    let rangeDistance = parseInt($("#sampling-interval").val());

    let calculate;
    let highlightMode = $("#select-highlight-mode").val();
    switch(highlightMode) {
        case 'avg':
            calculate = calculateAvg;
            break;
        case 'max':
            calculate = calculateMax;
            break;
        case 'min':
            calculate = calculateMin;
            break;
    }

    for(let i = 200; i < labels.length; i += rangeDistance+1) {
        let avgValuesBAT = calculate(batteryNotNormalized.slice(i,i+rangeDistance));
        let avgValuesBAR = calculate(barometerNotNormalized.slice(i,i+rangeDistance));
        let avgValuesSPD = calculate(speedNotNormalized.slice(i,i+rangeDistance));

        if  (areDangerValues(batteryNotNormalized.slice(i,i+rangeDistance), avgValuesBAT) &&
            areDangerValues(barometerNotNormalized.slice(i,i+rangeDistance), avgValuesBAR) &&
            areDangerValues(speedNotNormalized.slice(i,i+rangeDistance), avgValuesSPD)) {
            range.push([i,Math.min(i+rangeDistance, labels.length)]);
        }
    }

    for(let i=0; i < range.length; i++) {
        var firstX = range[i][0];
        var lastX = range[i][1];
        chartMulti.addXaxisAnnotation({
            x: Number(firstX),
            x2: Number(lastX),
            borderColor: 'rgba(255,0,13,0.78)',
            fillColor: 'rgba(255,0,13,0.78)',
            label: {
                borderColor: '#ee5d5d',
                style: {
                    color: '#fff',
                    background: 'rgba(238,93,93,0.7)'
                },
                text: 'Unusual behavior'
            }
        });
    }
}

/**
 * Method to generate the chart with all sensors together for smart vehicle devices
 * @param labels
 * @param tachometerData
 * @param speedData
 * @param potentiometerData
 * @param brakeData
 */
function generateMultipleChart_smartvehicle(labels, tachometerNotNormalized, speedNotNormalized, potentiometerNotNormalized, brakeNotNormalized) {
    if (window.chartMulti != undefined) {
        window.chartMulti.destroy();
    }

    // Converto gli indici dei timestamp in numeri in modo tale da poterci fare inferenza e rendere più veloce il rendering del grafico
    var labelsCounted = convertIndexInCount(labels);

    let tachometerData = normalizeArray(tachometerNotNormalized);
    let speedData = normalizeArray(speedNotNormalized);
    let potentiometerData = normalizeArray(potentiometerNotNormalized);
    let brakeData = normalizeArray(brakeNotNormalized);

    var options = {
        chart: {
            type: 'line',
            animations: {
                enabled: false
            },
        },
        fill: {
            type: 'solid'
        },
        colors: ['#727cf5', '#0acf97', '#fa5c7c', '#ffbc00'],
        markers: {
            size: 0
        },
        stroke: {
            width: [1, 1, 1, 1],
            dashArray: [0, 0, 0, 0]
        },
        series: [{
            name: "RPM",
            data: tachometerData,
        },
            {
                name: "Speed",
                data: speedData,
            },
            {
                name: "Accelerator position",
                data: potentiometerData,
            },
            {
                name: "Brake pressure",
                data: brakeData,
            }
        ],
        xaxis: {
            type: 'numeric',
            categories: labelsCounted,
            labels: {
                show: false
            }
        },
        tooltip: {
            x: {
                formatter: function (val) {
                    return labels[val];
                }
            }
        },
        yaxis: {
            labels: {
                formatter: function(value) {
                    return value.toFixed(3);
                }
            }

        }
    }

    window.chartMulti = new ApexCharts($("#custom-chart-line-3")[0], options);
    chartMulti.render();

    //Adding highlighted intervals
    let range = [];
    let rangeDistance = parseInt($("#sampling-interval").val());

    let calculate;
    let highlightMode = $("#select-highlight-mode").val();
    switch(highlightMode) {
        case 'avg':
            calculate = calculateAvg;
            break;
        case 'max':
            calculate = calculateMax;
            break;
        case 'min':
            calculate = calculateMin;
            break;
    }

    for(let i = 200; i < labels.length; i += rangeDistance+1) {
        let avgValuesRPM = calculate(tachometerNotNormalized.slice(i,i+rangeDistance));
        let avgValuesSPD = calculate(speedNotNormalized.slice(i,i+rangeDistance));
        let avgValuesACC = calculate(potentiometerNotNormalized.slice(i,i+rangeDistance));

        console.log("Value for RPM: " + avgValuesRPM);

        if  (areDangerValues(tachometerNotNormalized.slice(i,i+rangeDistance), avgValuesRPM) &&
            areDangerValues(speedNotNormalized.slice(i,i+rangeDistance), avgValuesSPD) &&
            areDangerValues(potentiometerNotNormalized.slice(i,i+rangeDistance), avgValuesACC)) {
            range.push([i,Math.min(i+rangeDistance, labels.length)]);
        }
    }

    for(let i=0; i < range.length; i++) {
        var firstX = range[i][0];
        var lastX = range[i][1];
        chartMulti.addXaxisAnnotation({
            x: Number(firstX),
            x2: Number(lastX),
            borderColor: 'rgba(255,0,13,0.78)',
            fillColor: 'rgba(255,0,13,0.78)',
            label: {
                borderColor: '#ee5d5d',
                style: {
                    color: '#fff',
                    background: 'rgba(238,93,93,0.7)'
                },
                text: 'Unusual behavior'
            }
        });
    }
}

/**
 * Method to generate the chart with all sensors together for drone devices
 * @param labels
 * @param batteryData
 * @param gpsData
 * @param speedData
 */
function generateMultipleChart_wearable(labels, batteryNotNormalized, acceleratorNotNormalized, gyroscopeNotNormalized, monitorNotNormalized) {
    if (window.chartMulti != undefined) {
        window.chartMulti.destroy();
    }

    // Converto gli indici dei timestamp in numeri in modo tale da poterci fare inferenza e rendere più veloce il rendering del grafico
    var labelsCounted = convertIndexInCount(labels);

    let batteryData = normalizeArray(batteryNotNormalized);
    let acceleratorData = normalizeArray(acceleratorNotNormalized);
    let gyroscopeData = normalizeArray(gyroscopeNotNormalized);
    let monitorData = normalizeArray(monitorNotNormalized);

    var options = {
        chart: {
            type: 'line',
            animations: {
                enabled: false
            },
        },
        /*
        fill: {
            type: 'solid'
        },
         */
        colors: ['#727cf5', '#0acf97', '#fa5c7c', '#ffbc00', '#ad1890'],
        markers: {
            size: 0
        },
        stroke: {
            width: [1, 1, 1, 1],
            dashArray: [0, 0, 0, 0]
        },
        series: [{
            name: "Battery",
            data: batteryData,
        },
            {
                name: "Acceleration",
                data: acceleratorData,
            }, /*
            {
                name: "Rotation",
                data: gyroscopeData,
            }, */
            {
                name: "Heart rate",
                data: monitorData,
            }
        ],
        xaxis: {
            type: 'numeric',
            categories: labelsCounted,
            labels: {
                show: false
            }
        },
        tooltip: {
            x: {
                formatter: function (val) {
                    return labels[val];
                }
            }
        },
        yaxis: {
            labels: {
                formatter: function(value) {
                    return value.toFixed(5);
                }
            }
        }
    }

    //Should remove formatters? Cause problems
    window.chartMulti = new ApexCharts($("#custom-chart-line-3")[0], options);
    chartMulti.render();

    //Adding highlighted intervals
    let range = [];
    let rangeDistance = parseInt($("#sampling-interval").val());
    let calculate = calculateAvg;
    for(let i = 0; i < labels.length; i += rangeDistance+1) {
        let avgValuesBAT = calculate(batteryNotNormalized.slice(i,i+rangeDistance));
        let avgValuesACC = calculate(acceleratorNotNormalized.slice(i,i+rangeDistance));
        let avgValuesHRM = calculate(monitorNotNormalized.slice(i,i+rangeDistance));

        console.log(avgValuesBAT, avgValuesACC, avgValuesHRM);
        if  (areDangerValues(batteryNotNormalized.slice(i,i+rangeDistance), avgValuesBAT) &&
            areDangerValues(acceleratorNotNormalized.slice(i,i+rangeDistance), avgValuesACC) &&
            areDangerValues(monitorNotNormalized.slice(i,i+rangeDistance), avgValuesHRM)) {
            range.push([i,Math.min(i+rangeDistance, labels.length)]);
        }
    }

    for(let i=0; i < range.length; i++) {
        var firstX = range[i][0];
        var lastX = range[i][1];
        chartMulti.addXaxisAnnotation({
            x: Number(firstX),
            x2: Number(lastX),
            borderColor: 'rgba(255,0,13,0.78)',
            fillColor: 'rgba(255,0,13,0.78)',
            label: {
                borderColor: '#ee5d5d',
                style: {
                    color: '#fff',
                    background: 'rgba(238,93,93,0.7)'
                },
                text: 'Unusual behavior'
            }
        });
    }
}

/**
 * Method to get the labels of the x-axis (timestamps) for the charts
 * @param data
 * @returns labels array of timestamps (Strings)
 */
function getSensorMeasurementLabels(data) {
    var labels = [];
    $.each(data.results, function(index, row) {
        $.each(row, function(index, item) {
            if (index.match("timestamp")) {
                labels.push(item);
            }
        });
    });
    let realLabels = [];
    let timestampInterval = parseInt($("#timestamp-interval").val());
    if(timestampInterval > 1) {
        for(let i = 0; i < labels.length; i += timestampInterval) {
            realLabels.push(labels[i]);
        }
    } else {
        realLabels = labels;
    }
    return realLabels;
}

/**
 * Method to get the timestamp for not-null measurements of the sensor given
 * @param data
 * @param sensorName the name of the sensor you need the measurements not to be null
 * @returns labels an array of timestamps (String)
 */
function getSensorMeasurementLabels_notNull(data, sensorName) {
    var labels = [];
    let sensorField = "";

    switch(sensorName) {
        case "battery":
            sensorField = "battery_percentage";
            break;
        case "accelerometer":
            sensorField = "accelerometer_acceleration";
            break;
        case "gyroscope":
            sensorField = "gyroscope_rotation";
            break;
        case "hrm":
            sensorField = "hrm_heart_rate";
            break;
    }

    $.each(data.results, function(index, row) {
        let timestamp = "";
        $.each(row, function(index, item) {
            if (index.match("timestamp")) {
                timestamp = item;
            } else if (!(timestamp === "") && index.match(sensorField)) {
                if(item != null) {
                    labels.push(timestamp);
                }
            }
        });
    });

    let realLabels = [];
    let timestampInterval = parseInt($("#timestamp-interval").val());
    if(timestampInterval > 1) {
        for(let i = 0; i < labels.length; i += timestampInterval) {
            realLabels.push(labels[i]);
        }
    } else {
        realLabels = labels;
    }
    return realLabels;
}

// Metodo per ottenere i values per il grafico
function getSensorMeasurementValues_drone(sensor, data) {
    var values = [];
    var value = "";

    switch(sensor) {
        case "battery":
            value = "battery_voltage";
            break;
        case "barometer":
            value = "barometer_altitude";
            break;
        case "gps":
            value = "gps_satellites_number";
            break;
        case "photo":
            value = "photo_size";
            break;
        case "video":
            value = "video_size";
            break;
    }

    $.each(data.results, function(index, row) {
        $.each(row, function(index, item) {
            if (index.match(value)) {
                if(item === null) {
                    if(index.match("size")) {
                        values.push(0);
                    } else {
                        values.push(Number.NaN);
                    }
                } else {
                    if(index.match("size")) {
                        values.push(1);
                    } else {
                        values.push(item);
                    }
                }
            }
        });
    });

    let timestampInterval = parseInt($("#timestamp-interval").val());
    let realValues = [];
    if(timestampInterval > 1) {
        for(let i=0; i<values.length; i += timestampInterval) {
            realValues.push(values[i]);
        }
    } else {
        realValues = values;
    }

    return realValues;
}

// Method to obtain values for smart vehicle graphs
function getSensorMeasurementValues_sv(sensor, data) {
    var values = [];
    var value = "";

    switch(sensor) {
        case "tachometer":
            value = "tachometer_rpm";
            break;
        case "wss":
            value = "wss_speed";
            break;
        case "potentiometer":
            value = "potentiometer_accelerator_angle";
            break;
        case "brake_sensor":
            value = "brake_sensor_pressure";
            break;
    }

    $.each(data.results, function(index, row) {
        $.each(row, function(index, item) {
            if (index.match(value)) {
                if(item === null) {
                    if(index.match("size")) {
                        values.push(0);
                    } else {
                        values.push(Number.NaN);
                    }
                } else {
                    if(index.match("size")) {
                        values.push(1);
                    } else {
                        values.push(item);
                    }
                }
            }
        });
    });

    let timestampInterval = parseInt($("#timestamp-interval").val());
    let realValues = [];
    if(timestampInterval > 1) {
        for(let i=0; i<values.length; i += timestampInterval) {
            realValues.push(values[i]);
        }
    } else {
        realValues = values;
    }

    return realValues;
}

/**
 * Method to obtain values for wearable charts
 * @param sensor
 * @param data
 * @returns {*[]}
 */
function getSensorMeasurementValues_wearable(sensor, data) {
    var values = [];
    var value = "";

    switch(sensor) {
        case "battery":
            value = "battery_percentage";
            break;
        case "accelerometer":
            value = "accelerometer_acceleration";
            break;
        case "gyroscope":
            value = "gyroscope_rotation";
            break;
        case "hrm":
            value = "hrm_heart_rate";
            break;
    }

    $.each(data.results, function(index, row) {
        $.each(row, function(index, item) {
            if (index.match(value)) {
                if(item === null) {
                    if(index.match("size")) {
                        values.push(0);
                    } else {
                        values.push(null);
                    }
                } else {
                    if(index.match("size")) {
                        values.push(1);
                    } else {
                        values.push(item);
                    }
                }
            }
        });
    });

    let timestampInterval = parseInt($("#timestamp-interval").val());
    let realValues = [];
    if(timestampInterval > 1) {
        for(let i=0; i<values.length; i += timestampInterval) {
            realValues.push(values[i]);
        }
    } else {
        realValues = values;
    }

    return realValues;
}

/**
 * Method to obtain values for wearable charts (Only not null)
 * @param sensor
 * @param data
 * @returns {*[]}
 */
function getSensorMeasurementValues_wearable_notNull(sensor, data) {
    var values = [];
    var value = "";

    switch(sensor) {
        case "battery":
            value = "battery_percentage";
            break;
        case "accelerometer":
            value = "accelerometer_acceleration";
            break;
        case "gyroscope":
            value = "gyroscope_rotation";
            break;
        case "hrm":
            value = "hrm_heart_rate";
            break;
    }

    $.each(data.results, function(index, row) {
        $.each(row, function(index, item) {
            if (index.match(value)) {
                if(item != null) {
                    values.push(item);
                }
            }
        });
    });

    let finalValues = values;
    if(sensor == "accelerometer") {
        finalValues = getAcceleration(values);
    } else if(sensor == "gyroscope") {
        finalValues = getRotation(values);
    }

    let timestampInterval = parseInt($("#timestamp-interval").val());
    let realValues = [];
    if(timestampInterval > 1) {
        for(let i=0; i<values.length; i += timestampInterval) {
            realValues.push(finalValues[i]);
        }
    } else {
        realValues = finalValues;
    }

    return realValues;
}

// Metodo per cambiare la paginazione
function changePagination(results) {

    param = {
        "id_log": results.results[0].id_log
    }

    function callbackTotalMeasurement(data) {
        generatePagination(results, data.results.total, 10);
    }

    $.postJSON("Measurement", "getTotalForLog", param, callbackTotalMeasurement);

}

// Metodo per disegnare la paginazione
function generatePagination(data, totalResults, numResultsToShow) {

    $('#custom-pagination').twbsPagination('destroy');

    var numPages = totalResults / numResultsToShow;
    if (numPages < 1) {
        numPages = 1;
    }

    $('#custom-pagination').twbsPagination({
       totalPages: numPages,
       visiblePages: 5,
       onPageClick: function (event, page) {
          var fromResult = Number(page-1) + "0";
          var toResult = page + "0";
          generateTable(data, fromResult, toResult);
       }
   });

}

// Metodo per normalizzare gli array dei sensori
function normalizeArray(data) {
    var max = Math.max(...data);    //... = spread operator
    var min = Math.min(...data);
    var normalizedArray = [];
    for (var i = 0; i < data.length; i++) {
        if(data[i] == null) {
            normalizedArray.push(null);
        } else {
            normalizedArray.push(normalize(data[i], min, max));
        }
    }
    return normalizedArray;
}

// Metodo per normalizzare i valori
function normalize(value, min, max) {
    return (value - min) / (max - min);
}

// Metodo per ottenere i range dei valori che superano sia la threshold del range dei limiti
function getRangeThreshold(dataOutThresholdTrendline, thresholdRange) {
    var range = [];
    var count = 0;
    var firstX = 0;
    var lastX = 0;
    for (var i = 0; i < dataOutThresholdTrendline.length; i++) {
        if(dataOutThresholdTrendline[i][1] != null) {
            firstX = i;
            for (var i = firstX; i < dataOutThresholdTrendline.length; i++) {
                if (dataOutThresholdTrendline[i][1] != null) {
                    count++;
                }
                if (i >= dataOutThresholdTrendline.length || dataOutThresholdTrendline[i][1] == null) {
                    lastX = i-1;
                    break;
                }
            }
            if (count >= thresholdRange) {
                lastX = i-1;
                range.push([firstX, lastX]);
            }
            count = 0;
            firstX = 0;
            lastX = 0;
        }
    }
    return range;
}

// Metodo per ottere l'array di valori fuori dal limite superiore
function getUpperBoundData(data, trendlineUpperLimit) {
    var dataOutUpperBound = [];
    for(var i = 0; i < data.length; i++) {
        if(data[i] > trendlineUpperLimit[i]) {
            dataOutUpperBound.push([i, Number(data[i])]);
        } else {
            dataOutUpperBound.push([i, null]);
        }
    }
    return dataOutUpperBound;
}

// Metodo per ottere l'array di valori fuori dal limite inferiore
function getLowerBoundData(data, trendlineLowerLimit) {
    var dataOutLowerBound = [];
    for(var i = 0; i < data.length; i++) {
        if(data[i] <= trendlineLowerLimit[i]) {
            dataOutLowerBound.push([i, Number(data[i])]);
        } else {
            dataOutLowerBound.push([i, null]);
        }
    }
    return dataOutLowerBound;
}


// Metodo per calcolare la retta dei punti del limite superiore accettabile dalla trendline
function getTrendlineUpperLimit(points, threshold) {
    var upperLimit = [];
    for (var i = 0; i < points.length; i++) {
        upperLimit.push(Number(points[i]) + threshold);
    }
    return upperLimit;
}

// Metodo per calcolare la retta dei punti del limite inferiore accettabile dalla trendline
function getTrendlineLowerLimit(points, threshold) {
    var lowerLimit = [];
    for (var i = 0; i < points.length; i++) {
        lowerLimit.push(Number(points[i]) - threshold);
    }
    return lowerLimit;
}

// Metodo per cambiare gli indici dei valori ottenuti dal grafico togliendo i timestamp ai valori
function changeIndexValues(array) {
    var newArray = [];
    for(var i = 0; i < array.length; i++) {
        newArray.push([i, Number(array[i])]);
    }
    return newArray;
}

// Metodo per cambiare gli indici dei valori ottenuti dal grafico togliendo i timestamp e mettendo la numerazione al loro poso
function convertIndexInCount(array) {
    var newArray = [];
    for(var i = 0; i < array.length; i++) {
        newArray.push(i);
    }
    return newArray;
}

// Metodo per calcolare la trendline statica basata sul valore più ricorrente
function getStaticMostFrequentValueTrendline(points) {
    var map = new Map()
    for (var point of points) {
        map.set(point, (map.get(point) || 0) + 1)
    }

    var mostCommonNumber = NaN;
    var maxCount = -1;
    for (var [point, count] of map.entries()) {
        if (count > maxCount) {
            maxCount = count;
            mostCommonNumber = point;
        }
    }
    var trendline = [];
    for (var i = 0; i < points.length; i++) {
        trendline.push(Number(mostCommonNumber));
    }
    return trendline;
}

// Metodo per calcolare la trendline statica basata sul valore medio
function getStaticAverageValueTrendline(points) {
    var total = 0;
    for(var i = 0; i < points.length; i++) {
        total += Number(points[i]);
    }
    var avg = total / points.length;
    var trendline = [];
    for (var i = 0; i < points.length; i++) {
        trendline.push(avg);
    }
    return trendline;
}

// Metodo per calcolare la trendline statica basata sul valore massimo
function getStaticMaxValueTrendline(points) {
    var max = Math.max(...points);
    var trendline = [];
    for (var i = 0; i < points.length; i++) {
        trendline.push(max);
    }
    return trendline;
}

// Metodo per calcolare la trendline statica basata sul valore minimo
function getStaticMinValueTrendline(points) {
    var min = Math.min(...points);
    var trendline = [];
    for (var i = 0; i < points.length; i++) {
        trendline.push(min);
    }
    return trendline;
}

// Metodo per calcolare la trendline lineare
function getLinearTrendline(points) {
    var values = slopeAndIntercept(points);
    if (values) {
        var N = points.length;
        var trendline = [];
        // Calcolo dei valori della trendline tramite l'equazione y = mx + q
        for (var i = 0; i < N; i++) {
            trendline.push(values.slope * points[i][0] + values.intercept);
        }
        return trendline;
    }
    return [];
}

// Metodo per calcolare la il numero di valori fuori e dentro la threshold
function getInOutThresholdNumber(data, trendlineData, threshold) {
    var countIn = 0;
    var countOut = 0;
    for(var i = 0; i < trendlineData.length; i++) {
        var scarto = trendlineData[i] - data[i];
        var value = Math.abs(scarto);
        if(value <= threshold) {
            countIn++;
        } else {
            countOut++;
        }
    }
    var values = {
        inThreshold: countIn,
        outThreshold: countOut
    }
    return values;
}

// Metodo per calcolare lo slope and intercept per la trendline
function slopeAndIntercept(points) {

    var values = {};

    var N = points.length;
    var sumX = 0, sumY = 0;
    var sumXx = 0, sumYy = 0, sumXy = 0;

    // Non si può fare il fit di due numeri
    if (N < 2) {
        return values;
    }

    for (var i = 0; i < N; i++) {
        var x = points[i][0];
        var y = points[i][1];

        sumX += x;
        sumY += y;
        sumXx += (x * x);
        sumYy += (y * y);
        sumXy += (x * y);
    }

    values['slope'] = ((N * sumXy) - (sumX * sumY)) / (N * sumXx - (sumX * sumX));
    values['intercept'] = (sumY - values['slope'] * sumX) / N;
    values['rSquared'] = Math.abs((values['slope'] * (sumXy - (sumX * sumY) / N)) / (sumYy - ((sumY * sumY) / N)));

    return values;
}

// Metodo per ottener le coordinate con timestamp e valori dei sensori associati distinti
function getDistinctCoordinates(data) {
    var distinct = [];
    var distinctTemp = [];

    var x = 0;
    $.each(data.results, function(index, row) {

        x++;

        var timestamp = "";
        var coordinates = "";
        var voltage = "";
        var altitude = "";
        var numSatellites = 0;

        $.each(row, function(index, item) {
            if (index.match("timestamp")) {
                timestamp = item;
            }
            if (index.match("gps_coordinates")) {
                coordinates = item;
            }
            if (index.match("battery_voltage")) {
                voltage = item;
            }
            if (index.match("barometer_altitude")) {
                altitude = item;
            }
            if (index.match("satellites_number")) {
                numSatellites = item;
            }
        });
        // Controllo se non è già presente
        if ($.inArray(coordinates, distinctTemp) === -1) {
            distinctTemp.push(coordinates);
            distinct.push([timestamp, coordinates, voltage, altitude, numSatellites, x]);
        }
    });
    return distinct;
}

// Metodo per disegnare la route di viaggio del drone
function generateMap(coordinates, markerPercentage) {

    var firstLat = coordinates[0][1].split(",")[0];
    var firstLong = coordinates[0][1].split(",")[1];

    // Creo e rimuovo la mappa ad ogni caricamento
    $("#map").remove();
    $("#map-container").append( "<div id='map'></div>" );

    var map = L.map('map').setView([firstLat, firstLong], 17);
    L.tileLayer('https://api.maptiler.com/maps/basic/{z}/{x}/{y}.png?key=VLgy7Nl7no2Jj4A1X58L', {
        attribution: '<a href="https://www.maptiler.com/copyright/" target="_blank">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright" target="_blank">&copy; OpenStreetMap contributors</a>',
    }).addTo(map);

    var marker = L.marker([firstLat, firstLong]).addTo(map);

    var pointList = [];
    for (var i = 0; i < coordinates.length; i++) {
        var point = new L.LatLng(coordinates[i][1].split(",")[0], coordinates[i][1].split(",")[1]);
        pointList.push(point);
    }

    // Vado a definire una treshold per l'incremento
    // In modo tale da limitare il numero il numero dei marker da disegnare
    var percentage = parseInt((markerPercentage / 100) * coordinates.length);
    var increment = parseInt(coordinates.length / percentage);

    reverseGeocoding(coordinates[0][1].split(",")[0], coordinates[0][1].split(",")[1]);

    var count = 0;
    for (var i = 0; i < coordinates.length;  i += increment) {
        var latitude = coordinates[i][1].split(",")[0];
        var longitude = coordinates[i][1].split(",")[1]
        var timestamp = coordinates[i][0];
        var voltage = coordinates[i][2];
        var altitude = coordinates[i][3];
        var numSatellites = coordinates[i][4];
        var speed = 0;

        count++;
        /*
        Custom icon
        var icon = L.icon({
          iconSize: [25, 41],
          iconAnchor: [10, 41],
          popupAnchor: [2, -40],
          iconUrl: "assets/icons/marker-icon.svg",
        });
        */

        if (i === 0) {
            var marker = L.marker([latitude, longitude]).addTo(map);

            marker.bindTooltip(
                '<p class="header-title font-weight-bold text-primary"<b>Point-' + count + '</b></p>' +
                '<p class="text-title"<span>Latitude: </span>' + latitude + '</p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Longitude: </span>' + longitude + '</p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Timestamp: </span>' + timestamp + '</p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Voltage: </span>' + voltage + ' </p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Altitude: </span>' + altitude + ' MSL</p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Satellites number: </span>' + numSatellites + '</p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Average Speed: </span>' + speed + ' km/h </p>'
            );
        } else if(i > 0 && i < coordinates.length-1) {
            var marker = L.marker([latitude, longitude]).addTo(map);


            var firstXMarker = coordinates[i-increment][5]
            if(coordinates[i][5] != undefined) {
                lastXMarker = coordinates[i][5];
            } else {
                lastXMarker = coordinates.length-1;
            }

            var timeastampA = timestamp.split(" ");
            var timeA = new Date(timeastampA[0].split("-")[0], timeastampA[0].split("-")[1], timeastampA[0].split("-")[2], timeastampA[1].split(":")[0], timeastampA[1].split(":")[1], timeastampA[1].split(":")[2]).getTime();

            var latitudeB = coordinates[i-increment][1].split(",")[0];
            var longitudeB = coordinates[i-increment][1].split(",")[1]
            var timestampB = coordinates[i-increment][0].split(" ");
            var timeB = new Date(timestampB[0].split("-")[0], timestampB[0].split("-")[1], timestampB[0].split("-")[2], timestampB[1].split(":")[0], timestampB[1].split(":")[1], timestampB[1].split(":")[2]).getTime();

            var problem = checkProblem(firstXMarker, lastXMarker);

            var note = "";
            switch(problem) {
                case 0:
                    note = '<span class="text-success">Normal behaviour for battery</span>';
                    break;
                case 1:
                    note = '<span class="text-danger">Unusual upper bound behaviour for battery<br>(from Point-' + Number(count-1) + ' to Point-' + count +')</span>';
                    break;
                case 2:
                    note = '<span class="text-danger">Unusual lower bound behaviour for battery<br>(from Point-' + Number(count-1) + ' to Point-' + count +')</span>';
                    break;
                case 3:
                    note = '<span class="text-danger">Unusual upper and lower bound behaviour for battery<br>(from Point-' + Number(count-1) + ' to Point-' + count +')</span>';
                    break;
            }

            speed = calculateSpeed(timeA, latitude, longitude, timeB, latitudeB, longitudeB);
            marker.bindTooltip(
                '<p class="header-title font-weight-bold text-primary"<b>Point-' + count + '</b></p>' +
                '<p class="text-title"<span>Latitude: </span>' + latitude + '</p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Longitude: </span>' + longitude + '</p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Timestamp: </span>' + timestamp + '</p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Voltage: </span>' + voltage + ' </p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Altitude: </span>' + altitude + ' MSL</p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Satellites number: </span>' + numSatellites + '</p>' +
                '<p class="text-title" style="margin-top: -10px;"<span>Average Speed (from Point-' + Number(count-1) + ' to Point-' + count +'): </span>' + speed.toFixed(2) + ' km/h </p>' +
                note
            );
        }
    }

    var polyline = new L.Polyline(pointList, {
        color: '#727cf5',
        weight: 3,
        opacity: 0.5,
        smoothFactor: 1
    }).addTo(map);

    // Centro la mappa sulla route
    map.fitBounds(polyline.getBounds());
}

// Metodo per ottenere il tipo di problemi nel range della mappa da segnare nelle note del marker
function checkProblem(firstXMarker, lastXMarker) {

    var flagUpper = false;
    var flagLower = false;

    var upperBoundProblem = dangerValues[0];
    var lowerBoundProblem = dangerValues[1];

    for(var i = 0; i < upperBoundProblem.length; i++) {

        firstXProblem = upperBoundProblem[i][0];
        lastXProblem = upperBoundProblem[i][1];
        if(firstXProblem <= lastXMarker && lastXProblem >= firstXMarker) {
            flagUpper = true;
            break;
        }
    }

    for(var i = 0; i < lowerBoundProblem.length; i++) {
        firstXProblem = lowerBoundProblem[i][0];
        lastXProblem = lowerBoundProblem[i][1];
        if(firstXProblem <= lastXMarker && lastXProblem >= firstXMarker) {
            flagLower = true;
            break;
        }
    }

    if(flagUpper === true) {
        if(flagLower === true) {
            // Supera sia sopra che sotto
            return 3;
        } else {
            // Supera solo sopra
            return 1;
        }
    } else {
        if(flagLower === true) {
            // Supera solo sotto
            return 2;
        } else {
            // Nessun problema
            return 0;
        }
    }
}

// Metodo per calcolare la velocità da un punto a ad un punto b sulla mappa
function calculateSpeed(timeA, latitudeA, longitudeA, timeB, latitudeB, longitudeB) {

    // Il raggio della Terra in km
    var R = 6371;
    // Converto i gradi in radianti
    var deltaLatitude = (latitudeB - latitudeA) * Math.PI / 180;
    var deltaLongitude = (longitudeB - longitudeA) * Math.PI / 180;
    var latitudeA = latitudeA * Math.PI / 180;
    var latitudeB = latitudeB * Math.PI / 180;

    var a = Math.sin(deltaLatitude / 2) * Math.sin(deltaLatitude / 2) + Math.sin(deltaLongitude / 2) * Math.sin(deltaLongitude / 2) * Math.cos(latitudeA) * Math.cos(latitudeB);
    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    var distance = R * c;

    // Ottengo la prima velocità in km per millisecondi
    var speedInKmMs = distance / Math.abs(timeB - timeA);
    // La converto in km orari
    var speedInKmH = speedInKmMs * 3.6e+6;

    return speedInKmH;
}

// Metodo per ottenere il reverse geocoding a partire da latitudine e logitudine
function reverseGeocoding(latitude, longitude) {
    $.get('https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=' + latitude + '&longitude=' + longitude + '&localityLanguage=en', function(response) {
        generateGPSInfo(response);
    });
}

// Metodo per generare le informazioni ricavate dal gps
function generateGPSInfo(data) {

    $('#card-report-gps-info').children("p").html("");

    $("#card-report-gps-info").append(
        '<p class="card-text">Continent: <span>' + data.continent + ' (' + data.continentCode + ')</span><br>' +
        'Nation: <span>' + data.countryName + ' (' + data.countryCode + ')</span><br>' +
        'Locality: <span>' + data.locality + ', ' + data.principalSubdivision + ' (' + data.principalSubdivisionCode + ')</span><br>'
    );
}

/**
 * Converts an array of x,y,z accelerations in a single value for the chart
 */
function getAcceleration(data) {
    let array = [];
    $.each(data, function(index, item){
        let x = 0;
        let y = 0;
        let z = 0;

        if(item != null) {
            let x_str = (item.split(',')[0]).substring(0);
            x = parseInt(x_str);
            let y_str = (item.split(',')[1]);
            y = parseInt(y_str);
            let z_str = (item.split(',')[2]).split('"')[0];
            z = parseInt(z_str);

            let sqrt = Math.sqrt(x*x + y*y + z*z);
            array.push(sqrt);
        }
    });
    return array;
}

/**
 * Converts an array of x,y,z rotation in a single value for the chart
 */
function getRotation(data) {
    /* MUST FIND A WAY TO CALCULATE ROTATION CORRECTLY
    let array = [];

    $.each(data, function(index, item){
        let x = 0;
        let y = 0;
        let z = 0;

        if(item != null) {
            let x_str = (item.split(',')[0]).substring(0);
            x = parseInt(x_str);
            let y_str = (item.split(',')[1]);
            y = parseInt(y_str);
            let z_str = (item.split(',')[2]).split('"')[0];
            z = parseInt(z_str);

            let sqrt = Math.sqrt(x*x + y*y + z*z);
            array.push(sqrt);
        }
    });
    return array;
     */
    return data;
}

function calculateAvg(data) {
    let sum = 0;
    let n = 0;
    for(let i = 0; i < data.length; i++) {
        if(data[i] != null) {
            sum += parseInt(data[i]);
            n++;
        }
    }
    if(n==0) {
        return 0;
    } else {
        return sum/n;
    }
}

function calculateMax(data) {
    return Math.max(...data);
}

function calculateMin(data) {
    return Math.min(...data);
}

/**
 * Campioniamo aree di 1000 misurazioni alla volta.
 * Calcoliamo la media dei valori dei sensori in queste aree e controlliamo se esistono valori in questo intervallo
 * che si discostano di range% dal valore medio letto dal sensore. Se ne esiste almeno uno, evidenziamo l'area come
 * "unusual behavior"
 * @param data dati da analizzare
 * @param avg media assunta nell'intervallo dei dati
 * @returns {boolean} true se l'area è da evidenziare, false altrimenti.
 */

function areDangerValues(data, avg) {
    let range = parseInt($("#tollerance-range").val()); //PARAMETRIZZABILE
    let rangeValue = avg * range / 100;
    for(let i = 0; i < data.length; i++) {
        if ((data[i] >= avg + rangeValue) ||
            (data[i] <= avg - rangeValue)) {
            return true;
        }
    }

    return false;
}
