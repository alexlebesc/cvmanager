<?php
/**
 * Created by PhpStorm.
 * User: Utilisateur
 * Date: 16/08/2015
 * Time: 11:55
 */

require_once __DIR__ . '/vendor/autoload.php';

use Symfony\Component\Console\Application;

$console = new Application();

$dir = "src/CVManager/Command/";
$dh  = opendir($dir);
$dir_list = array($dir);

while (false !== ($filename = readdir($dh))) {
    if($filename!= "." && $filename != ".." && is_dir($dir.$filename))
        array_push($dir_list, $dir.$filename.'/');
}

foreach ($dir_list as $dir) {

    foreach (glob($dir."*.php") as $filename) {
        $class = str_replace('src/', '', $filename);
        $class = str_replace('/','\\', $class);
        $class = str_replace('.php','', $class);

        $console->add(new $class());
    }
}

closedir($dh);

$console->run();

echo "welcome in CV manager";

/**
 * list the different sections available in the CVMANAGER
 * - Education
 * - Experience
 * - Interests
 * - Profile
 * - Skills
 */



// TODO: create command switching




