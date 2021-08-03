$(document).ready(function() {

    "use strict";

    updateFileName();
    changeEntity();

    importXML();
    cleanDB();


});
// Metodo per cambiare la paginazione in base all'enetità
function changePagination(entity) {

    function callbackTotalLog(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalDigitalInvestigator(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalMeasurement(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalDevice(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalMeasurement(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalBattery(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalBarometer(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalGPS(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalPhoto(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalVideo(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalAccelerometer(data){
        generatePagination(data.results.total, 10);
    }

    function callbackTotalGyroscope(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalWheelSpeedSensor(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalPotentiometer(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalBrakeSensor(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalTachometer(data) {
        generatePagination(data.results.total, 10);
    }

    function callbackTotalHeartRateMonitor(data) {
        generatePagination(data.results.total, 10);
    }

switch(entity) {
    case "log":
        $.postJSON("Log", "getTotal", {}, callbackTotalLog);
        break;
    case "digital_investigator":
        $.postJSON("DigitalInvestigator", "getTotal", {}, callbackTotalDigitalInvestigator);
        break;
    case "device":
        $.postJSON("Device", "getTotal", {}, callbackTotalDevice);
        break;
    case "measurement":
        $.postJSON("Measurement", "getTotal", {}, callbackTotalMeasurement);
        break;
    case "battery":
        $.postJSON("Battery", "getTotal", {}, callbackTotalBattery);
        break;
    case "barometer":
        $.postJSON("Barometer", "getTotal", {}, callbackTotalBarometer);
        break;
    case "gps":
        $.postJSON("GPS", "getTotal", {}, callbackTotalGPS);
        break;
    case "photo":
        $.postJSON("Photo", "getTotal", {}, callbackTotalPhoto);
        break;
    case "video":
        $.postJSON("Video", "getTotal", {}, callbackTotalVideo);
        break;
    case "accelerometer":
        $.postJSON("Accelerometer", "getTotal", {}, callbackTotalAccelerometer());
        break;
    case "gyroscope":
        $.postJSON("Gyroscope", "getTotal", {}, callbackTotalGyroscope());
        break;
    case "wheel_speed_sensor":
        $.postJSON("WSS", "getTotal", {}, callbackTotalWheelSpeedSensor());
        break;
    case "potentiometer":
        $.postJSON("Potentiometer", "getTotal", {}, callbackTotalPotentiometer());
        break;
    case "brake_sensor":
        $.postJSON("Brake", "getTotal", {}, callbackTotalBrakeSensor());
        break;
    case "tachometer":
        $.postJSON("Tachometer", "getTotal", {}, callbackTotalTachometer());
        break;
    case "Heart_rate_monitor":
        $.postJSON("HeartRateMonitor", "getTotal", {}, callbackTotalHeartRateMonitor());
        break;
    default:
        console.log("Entity not found!");
        break;
}

}

// Metodo per l'update del nome del file xml nella casella di input
function updateFileName() {

    "use strict";

    $("#custom-input").change(function(event) {
        var name = event.target.files[0].name;
        $('.custom-file-label').html(name);
    });
}

// Metodo per importare il file xml
function importXML() {

    "use strict";

    $("#form-xml-import").off().on("submit", function(event) {
        event.preventDefault();

        if (validateForm() === true) {
            var file = $("#custom-input").prop('files')[0];
            readFile(file, function(event) {
                var json = xmlToJSON.parseString(event.target.result);
                importLog(json);
                $('#success-import-modal').modal("show");
                changeEntity();
            });
        } else {
            console.log("XML not imported!");
        }
    });
}

// Metodo per leggere nel file xml
function readFile(file, onLoadCallback) {

    "use strict";

    var reader = new FileReader();
    reader.onload = onLoadCallback;
    reader.onerror = function() {
        console.log("File not read!");
    }
    reader.readAsText(file);
}

// Metodo per importare il log all'interno del database
function importLog(data) {

    "use strict";

    var log = data.log[0];

    // Esempio di come accedere al valore di una proprietà
    // console.log(log.report_number[0]._text);

    var param = {
        "report_number": log.report_number[0]._text,
        "acquisition_place": log.acquisition_place[0]._text,
        "notes": log.acquisition_notes[0]._text,
        "digital_investigator": {
            "id": log.digital_investigators[0].digital_investigator[0].id[0]._text,
        },
        "device": {
            "brand": log.device[0].brand[0]._text,
            "model": log.device[0].model[0]._text,
            "type": log.device[0].type[0]._text,
            "notes": log.device[0].notes[0]._text,
            "owner_name": log.device[0].owner_name[0]._text,
            "owner_surname": log.device[0].owner_surname[0]._text,
        },
        "measurements": {
        }
    }

    var count = 0;

    // Ciclo le misurazioni per aggiungere alla variabile param
    $.each(log.measurements[0].measurement, function(index, item) {
        // Creo l'elemento dell'oggetto
        param.measurements["measurement_" + count] = {};
        // Popolo il valore dell'elemento
        var measurement = {};
        measurement["timestamp"] = item.timestamp[0]._text;
        measurement["notes"] = item.notes[0]._text;
        // Ciclo ogni misurazione
        $.each(item, function(index, item) {
            if(index === "sensors") {
                // Ciclo i sensori
                measurement["sensors"] = {};
                $.each(item, function(index, item) {
                    // Ciclo ogni sensore
                    var sensor = {};
                    $.each(item, function(index, item) {
                        // Ciclo ogni dato di un sensore
                        measurement.sensors[index] = {}
                        var values = sensor[index] = {}
                        $.each(item[0], function(index, item) {
                            values[index] = item[0]._text;
                        });
                        measurement.sensors[index] = values;
                    })
                });
            }
        });
        // Aggiungo il valore all'elemento
        param.measurements["measurement_" + count] = measurement;
        count++;
    });

    function callbackImportLog(data) {
        console.log(data);
    }
    console.log(param);
    $.postJSON("Log", "insert", param, callbackImportLog);

}

// Metodo per validare il form prima dell'importazione del file xml
function validateForm() {

    "use strict";

    // Controllo degli errori su custom-input
    if ($("#custom-input").val() == '') {
        $("#custom-input").removeClass("is-valid");
        $("#custom-input").addClass("is-invalid");
        return false;
    } else {
        // Controllo se l'estensione del file è giusta
        var extension = $("#custom-input").val().split('.').pop().toLowerCase();
        if (extension === "xml") {
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

// Metodo per cambiare le entità con cui disegnare la tabella
function changeEntity() {

    "use strict";

    var count = 0;
    var entities = ["log", "digital_investigator", "device", "measurement", "battery", "barometer", "gps", "photo", "video", "accelerometer", "gyroscope", "wheel_speed_sensor", "potentiometer", "brake_sensor", "tachometer", "heart_rate_monitor"];

    // Carico subito l'entità Log
    loadEntity(entities[count], 0, 10);
    changePagination(entities[count]);
    count++;

    $("#btn-entity").off().on("click", function() {

        var entity = entities[count];

        $(this).val(entity);
        $(this).text(entity.replace("_", " "));
        loadEntity(entity, 0, 10);
        changePagination(entity);

        // Incremento il count, se supera la grandezza dell'array lo faccio ripartire da 0
        count++;
        if (count >= entities.length) {
            count = 0;
        }
    });
}

// Metodo per caricare le entità con cui disegnare la tabella
function loadEntity(entity, fromResult, forResult) {

    "use strict";

    var param = {
        "from_result": fromResult,
        "for_result": forResult
    }

    function callbackLoadLog(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadDigitalInvestigator(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadDrone(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadMeasurement(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadBattery(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadBarometer(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadGPS(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadPhoto(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadVideo(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadAccelerometer(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadGyroscope(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadWSS(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadPotentiometer(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadBrakeSensor(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadTachometer(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    function callbackLoadHeartRateMonitor(data) {
        if (data != '') {
            $(".empty-data").attr("hidden", true);
            generateTable(data);
        } else {
            $(".empty-data").attr("hidden", false);
            $('#table-head').children().html("");
            $('#table-body').children().html("");
        }
    }

    switch(entity) {
        case "log":
            $.postJSON("Log", "getAll", param, callbackLoadLog);
            break;
        case "digital_investigator":
            $.postJSON("DigitalInvestigator", "getAll", param, callbackLoadDigitalInvestigator);
            break;
        case "drone":
            $.postJSON("Drone", "getAll", param, callbackLoadDrone);
            break;
        case "measurement":
            $.postJSON("Measurement", "getAll", param, callbackLoadMeasurement);
            break;
        case "battery":
            $.postJSON("Battery", "getAll", param, callbackLoadBattery);
            break;
        case "barometer":
            $.postJSON("Barometer", "getAll", param, callbackLoadBarometer);
            break;
        case "gps":
            $.postJSON("GPS", "getAll", param, callbackLoadGPS);
            break;
        case "photo":
            $.postJSON("Photo", "getAll", param, callbackLoadPhoto);
            break;
        case "video":
            $.postJSON("Video", "getAll", param, callbackLoadVideo);
            break;
        case "accelerometer":
            $.postJSON("Accelerometer", "getAll", param, callbackLoadAccelerometer());
            break;
        case "gyroscope":
            $.postJSON("Gyroscope", "getAll", {}, callbackLoadGyroscope());
            break;
        case "wheel_speed_sensor":
            $.postJSON("WSS", "getAll", {}, callbackLoadWSS());
            break;
        case "potentiometer":
            $.postJSON("Potentiometer", "getAll", {}, callbackLoadPotentiometer());
            break;
        case "brake_sensor":
            $.postJSON("Brake", "getAll", {}, callbackLoadBrakeSensor());
            break;
        case "tachometer":
            $.postJSON("Tachometer", "getAll", {}, callbackLoadTachometer());
            break;
        case "Heart_rate_monitor":
            $.postJSON("HeartRateMonitor", "getAll", {}, callbackLoadHeartRateMonitor());
            break;
        default:
            console.log("Entity not found!");
            break;
    }
}

// Metodo per generare la tabella del database
function generateTable(data) {

    "use strict";

    // Pulisco la tabella prima di disegnarla
    $('#table-head').children().html("");
    $('#table-body').children().html("");

    var keys = Object.keys(data.results[0]);
    $.each(keys, function(index, item) {
        $('#table-head').children().append('<th scope="col">' + item + '</th>');
    });

    // Disegno le righe della tabella
    $.each(data.results, function(index, row) {
        var html = '<tr>';
        $.each(row, function(index, item) {
            if (index === "id" ) {
                html += '<th scope="row">' + item + '</td>';
            } else {
                html += '<td>' + item + '</td>';
            }
        });
        html += '</tr>'
        $('#table-body').append(html);
    });
}

// Metodo per pulire il database
function cleanDB() {

    "use strict";

    function callbackCleanDB(data) {
        changeEntity();
    }

    $("#btn-clean").off().on("click", function() {
        $('#danger-clean-modal').modal("show");
        $('#danger-clean-modal').on('click', '#btn-continue-clean', function() {
            $('#danger-clean-modal').modal("hide");
            $('#danger-clean-modal').on("hidden.bs.modal", function() {
                $.postJSON("Utilities", "cleanDB", {}, callbackCleanDB);
            });
        });
    });
}

// Metodo per disegnare la paginazione
function generatePagination(totalResults, numResultsToShow) {

    $('#custom-pagination').twbsPagination('destroy');

    var numPages = totalResults / numResultsToShow;
    isFinite() (numPages < 1)
    {
        numPages = 1;
    }

    $('#custom-pagination').twbsPagination({
        totalPages: numPages,
        visiblePages: 5,
        //startPage: startPage,
        onPageClick: function (event, page) {
            var fromResult = Number(page-1) + "0";
            var toResult = page + "0";
            loadEntity($("#btn-entity").val(), fromResult, 10);
        }
    });

}




