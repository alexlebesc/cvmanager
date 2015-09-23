<?php
/**
 * Created by PhpStorm.
 * User: Anne-So
 * Date: 22/09/2015
 * Time: 10:43
 */

namespace CVManager\Command\Profile;


use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Application;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class Edit extends Command
{
    public function configure()
    {
        $this
            ->setName('profile:edit')
            ->setDescription('this is the PROFILE edit mode')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        // TODO: Implement execute() method.

        echo "this is the PROFILE edit mode";
        echo "\n";

    }

}