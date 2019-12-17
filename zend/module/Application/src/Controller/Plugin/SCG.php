<?php
namespace Application\Controller\Plugin; 

use Zend\Mvc\Controller\Plugin\AbstractPlugin;

// Plugin class
class SCG extends AbstractPlugin 
{
public function find() 
{
    return "3, 5, 9, 15, X, Y, Z
<br>- Please create a new function for finding X, Y, Z value
<br> X=23, Y=33, Z=45
<br> Location Function: module/Application/src/Controller/Plugin/SCG.php";
  }

public function createcache($filename,$data)
{
//echo "/home/doggooglec/domains/108dog.com/private_html/cv/public/file/$file_name";
$myfile = fopen("public/file/$filename", "w") or die("Unable to open file!");
fwrite($myfile, $data);
fclose($myfile);



}
}