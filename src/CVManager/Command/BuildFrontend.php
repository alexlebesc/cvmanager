<?php
/**
 * Created by PhpStorm.
 * User: Anne-So
 * Date: 22/09/2015
 * Time: 10:41
 */

namespace CVManager\Command;


use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class BuildFrontend extends Command
{
    public function configure()
    {
        $this
            ->setName('frontend:build')
            ->setDescription('use to build the frontend')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
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

        $xslFile = getcwd() . "/mycv.xslt";
        $xmlFile = getcwd() . "/data.xml";

        $xslDoc = new \DOMDocument();
        $xslDoc->load($xslFile);

        $xmlDoc = new \DOMDocument();
        $xmlDoc->load($xmlFile);

        $proc = new \XSLTProcessor();
        $proc->importStylesheet($xslDoc);

        $proc->transformToUri($xmlDoc, 'file://'.getcwd().'/frontend/mycv/index.html');
    }
}