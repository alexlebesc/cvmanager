<?php
/**
 * Created by PhpStorm.
 * User: Utilisateur
 * Date: 16/08/2015
 * Time: 11:55
 */

require_once __DIR__ . '/vendor/autoload.php';

use CVManager\Command;

echo "welcome in CV manager";

/**
 * list the different sections available in the CVMANAGER
 * - Education
 * - Experience
 * - Interests
 * - Profile
 * - Skills
 */

echo "\n";
echo "- education"."\n";
echo "- experience"."\n";
echo "- interests"."\n";
echo "- profile"."\n";
echo "- skills"."\n";
echo "- build frontend"."\n";

// TODO: create command switching

// if no argument is passed to the command
// display the help

CVManager\Command\Education\View::execute();
CVManager\Command\Experience\View::execute();
CVManager\Command\Interests\View::execute();
CVManager\Command\Profile\View::execute();
CVManager\Command\Skills\View::execute();


