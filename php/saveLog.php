<?php

$data = $_POST['xml'];

// Creo un id unico per il file di log
$name =  uniqid ("LOG-", true);

$file = fopen("../logs/" . $name . ".xml", "w") or die("Unable to open file!");

// Formatto bene l'xml
$doc = new DOMDocument();
$doc->loadXML(strval($data));
$doc->preserveWhiteSpace = false;
$doc->formatOutput = true;
$xml = $doc->saveXML();

echo $name;

fwrite($file, $xml);
fclose($file);

?>
