<?php
/**
 * Created by PhpStorm.
 * User: Anne-So
 * Date: 22/09/2015
 * Time: 10:48
 */

namespace CVManager\Command\Interests;


use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Application;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class Edit extends Command
{
    public function configure()
    {
        $this
            ->setName('interest:edit')
            ->setDescription('this is the INTEREST edit mode')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        // TODO: Implement execute() method.

        echo "this is the INTEREST edit mode";
        echo "\n";
    }

}