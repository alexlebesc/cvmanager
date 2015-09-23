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

class Edit extends Command
{
    public function configure()
    {
        $this
            ->setName('experience:edit')
            ->setDescription('you are in the EXPERIENCE edit mode')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        // TODO: Implement execute() method.
        echo "you are in the EXPERIENCE edit mode";
        echo "\n";
    }

}