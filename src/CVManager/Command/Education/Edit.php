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

class Edit extends Command
{
    public function configure()
    {
        $this
            ->setName('education:edit')
            ->setDescription('you are in the EDUCATION edit mode')
        ;
    }


    protected function execute(InputInterface $input, OutputInterface $output) {

        // TODO: Implement execute() method.

        echo "you are in the EDUCATION edit mode";
        echo "\n";
    }
}