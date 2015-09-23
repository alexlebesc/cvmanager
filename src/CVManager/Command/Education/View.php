<?php
/**
 * Created by PhpStorm.
 * User: Anne-So
 * Date: 22/09/2015
 * Time: 10:46
 */

namespace CVManager\Command\Education;


use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Application;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class View extends Command
{

    public function configure()
    {
        $this
            ->setName('education:view')
            ->setDescription('this is the EDUCATION section')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output) {

        // TODO: Implement execute() method.

        echo "this is the EDUCATION section";
        echo "\n";
    }
}