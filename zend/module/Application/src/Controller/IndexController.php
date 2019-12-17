<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class IndexController extends AbstractActionController
{


    public function indexAction()
    {
        return new ViewModel();
    }



    public function findAction()
    {
$showtext = $this->SCG()->find('index');
$this->SCG()->createcache("find/find.txt","$showtext");
return new ViewModel([
        'showtext' => $showtext
    ]);
    }

    public function mapAction()
    {



$geo = $this->params()->fromQuery('geo', 'geo');

$geo=str_replace(" ","",$geo);
$geo=str_replace("(","",$geo);
$geo=str_replace(")","",$geo);
$filename=str_replace(",","-",$geo);
if (file_exists("public/file/map/{$filename}.txt")){
$myfile = fopen("public/file/map/{$filename}.txt", "r") or die("Unable to open file!");
$showtext=fread($myfile,filesize("public/file/map/{$filename}.txt"));
fclose($myfile);
}
else{
$showtext = file_get_contents("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$geo&radius=1500&type=restaurant&key=AIzaSyDrK9Z86-WUgNH7TXZzmlouw-5fCAXk770");
$this->SCG()->createcache("map/$filename.txt","$showtext");

}
return new ViewModel([
        'showtext' => $showtext
    ]);


    }

}
