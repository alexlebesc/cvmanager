<?php
/**
 * Created by PhpStorm.
 * User: Anne-So
 * Date: 22/09/2015
 * Time: 10:46
 */

namespace CVManager\Command\Skills;


use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Application;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class Edit extends Command
{
    public function configure()
    {
        $this
            ->setName('skills:edit')
            ->setDescription('this is the SKILLS edit mode')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        // TODO: Implement execute() method.

        echo "this is the SKILLS edit mode";
        echo "\n";
    }

}