<?php
/**
 * Created by PhpStorm.
 * User: Utilisateur
 * Date: 16/08/2015
 * Time: 11:55
 */

echo "welcome in CV manager";

/**
 * cvmanager build
 *
 * take the xml data
 * take the xslt
 * build index.html
 */

$xslFile = __DIR__ . "/mycv.xslt";
$xmlFile = __DIR__ . "/data.xml";

$xslDoc = new DOMDocument();
$xslDoc->load($xslFile);

$xmlDoc = new DOMDocument();
$xmlDoc->load($xmlFile);

$proc = new XSLTProcessor();
$proc->importStylesheet($xslDoc);

$proc->transformToUri($xmlDoc, 'file://'.getcwd().'/frontend/mycv/index.html');