<?php
/**
 * Created by PhpStorm.
 * User: Anne-So
 * Date: 22/09/2015
 * Time: 10:44
 */

namespace CVManager\Command\Experience;


use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Application;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class View extends Command
{
    public function configure()
    {
        $this
            ->setName('experience:view')
            ->setDescription('this is the EXPERIENCE section')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        // TODO: Implement execute() method.
        echo "this is the EXPERIENCE section";
        echo "\n";
    }

}