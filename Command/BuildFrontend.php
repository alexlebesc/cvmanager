<?php
/**
 * Created by PhpStorm.
 * User: Anne-So
 * Date: 22/09/2015
 * Time: 10:41
 */

namespace CVManager\Command;


use CVManager\Command;

class BuildFrontend implements Command
{
    public function execute()
    {
        echo "generate frontend";
        echo "\n";

        /**
         * cvmanager build
         *
         * take the xml data
         * take the xslt
         * build index.html
         */

        $xslFile = __DIR__ . "/../mycv.xslt";
        $xmlFile = __DIR__ . "/../data.xml";

        $xslDoc = new DOMDocument();
        $xslDoc->load($xslFile);

        $xmlDoc = new DOMDocument();
        $xmlDoc->load($xmlFile);

        $proc = new XSLTProcessor();
        $proc->importStylesheet($xslDoc);

        $proc->transformToUri($xmlDoc, 'file://'.getcwd().'/../frontend/mycv/index.html');
    }
}