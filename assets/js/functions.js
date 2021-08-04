/**
    * Supplies, stored in the $.postJSON variable, a function that uses the design pattern Proxy.
    * The documentation for the function stored in $.postJSON is available below.
 */

$(document).ready(function() {

    "use strict";

    /**
     * @param _class is the Class that declares the method that you want to call
     * @param _method is the method you want to call
     * @param data is the list of parameters that the method _method requires
     * @param callback is the callback function that is executed when this function has success
     *
     * Use this function to execute a method and, in case of success, execute the callback function
     * with the result returned by the method.
     * Build a callback function as "function foo(data) { ... }
     */
    $.postJSON = function(_class, _method, data, callback) {

        var url = "php/proxy.php";

        data.class = _class;
        data.method = _method;

        return $.ajax({
            url: url,
            type: 'POST',
            data: data,
            dataType: 'json',
            success: function(data) {
                callback(data);
            },
            error: function(xhr) {
                console.log("Server connection error!");
            }
        });
    }
});