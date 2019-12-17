<?php 
	$getdata = file_get_contents('php://input');
	$decodedata = json_decode($getdata,true);
	$replytoken = $decodedata['events'][0]['replyToken'];
	$userid = $decodedata['events'][0]['source']['userId'];
	$usertext = $decodedata['events'][0]['message']['text'];
        $timestamp = $decodedata['events'][0]['timestamp'];

//database connect
$conn = mysqli_connect('localhost', 'username', 'password','database') or die("ขออภัยครับ ขณะนี้ไม่สามารถติดต่อฐานข้อมูลได้ กรุณาเข้าชมใหม่ภายหลัง");
mysqli_query($conn,"SET NAMES 'utf8'");

//เพิ่มข้อมูลทุกๆ Log ลง database
$sql = "insert into log (userid, usertext, timestamp) values ('$userid', '$usertext', '$timestamp')";
mysqli_query($conn,"SET character_set_results=utf8"); 
mysqli_query($conn,"SET collation_connection=utf8_general_ci"); 
mysqli_query($conn,"SET NAMES 'utf8'");
mysqli_query($conn,$sql);

//เปลี่ยนคำค้นหาเป็นตัวเล็ก
$usertext = strtolower($usertext);
$usertext = trim($usertext);
if($usertext=='')
exit();
//ค้นหาในตารางชื่อ Admin เพื่อตรวจสอบคำค้นหาว่าเป็น Admin เลยหรือว่าเป็นชื่อ Server
$sql = "select * from admin where email LIKE '%{$usertext}%'";
$result = mysqli_query($conn,$sql); 
$nrow=0;
$nrow = mysqli_num_rows($result);

//ค้นหาในตารางชื่อ Servername เพื่อตรวจสอบคำค้นหาว่าเป็น Admin เลยหรือว่าเป็นชื่อ Server
$serversql = "select * from servername where servername LIKE '%{$usertext}%'";
$serverresult = mysqli_query($conn,$serversql); 
$srow=0;
$srow = mysqli_num_rows($serverresult);

//เคส 1 กรณีที่ตารางนับชื่อ Admin ไม่เป็น 0 เจอว่าพบแอดมิน จะแสดงผลคำค้นหาที่เป็นชื่อ Admin ก่อน
if($nrow!=0)
  {
  $i=1;
  $finaltext="ตรวจสอบแล้วคำค้นหารายชื่อ E-mail มีข้อมูลดังนี้ \n";

    while($i<=$nrow)
      {
      $data = mysqli_fetch_array($result); 
      $email = $data["email"];
      $tel = $data["tel"];
      $finaltext="{$finaltext} \n{$email} {$tel} ";
      ++$i;
      }
      }

//เคส 2 ค้นหาแล้วพบว่า มีรายชื่อเพียง Server เดียวเลยให้แสดงผลรายชื่อคนดูแลระบบได้เลย
else if($srow==1)
  {
  $data = mysqli_fetch_array($serverresult); 
  $serverid=$data["serverid"];
  $servername=$data["servername"];
  $finaltext="ตรวจสอบแล้วคำค้นหาพบ 1 Server ชื่อ $servername มีข้อมูลดังนี้ \n";
  $joinsql="select
  adminlist.serverid, 
  adminlist.adminid, 
  admin.email, 
  admin.tel
  from
  adminlist
  inner join admin 
  on adminlist.adminid=admin.adminid
  where adminlist.serverid='$serverid'";
  $i=1;
  $joinresult = mysqli_query($conn,$joinsql); 
  $joinrow = mysqli_num_rows($joinresult);

    while($i<=$joinrow)
      {
      $joindata = mysqli_fetch_array($joinresult); 
      $email = $joindata ["email"];
      $tel = $joindata ["tel"];
      $finaltext="{$finaltext}  \n{$email} {$tel}";
      ++$i;
      }
    }

//เคส 3 ค้นหาแล้วพบว่า มีรายชื่อ Server หลายเครื่องแสดงผลรายชื่อ Server ให้เลือกอีกที
else if($srow!=0)
  {
  $finaltext="ตรวจสอบแล้ว คำค้นหาพบ $srow Server มีข้อมูลดังนี้ \n";
  $i=1;
    while($i <= $srow)
    {
    $data = mysqli_fetch_array($serverresult); 
    $servername = $data["servername"];
    $finaltext="{$finaltext}\n{$servername}";
    ++$i;
    }
  $finaltext="{$finaltext}\nโปรดพิมพ์ชื่อเครื่อง Server ที่ต้องการหาข้อมูลจากรายชื่อด้านบน";
  }

//กรณีที่ไม่พบข้อมูลทั้งหมด
else
$finaltext="ไม่พบข้อมูลโปรดลองกรอกข้อมูล ชื่อ E-mail หรือ ชื่อ Server อย่างใดอย่างนึงเพื่อใช้ในการค้นหาใหม่ครับ";


mysqli_close($conn);







	$messages = [];
	$messages['replyToken'] = $replytoken;
	$messages['messages'][0] = getMessage("$finaltext");
	$encodeJson = json_encode($messages);
	$linedata['url'] = "https://api.line.me/v2/bot/message/reply";
  $linedata['token'] = "9wfTUv9c8FbpmqiwP2uf+MZGNwlZetrxvpGySi1ZWaJkByd52KY296Wxm+ZmSSMApuKHywp+BSvQ+Gb5mlX+D8YglvxamUL/l/v6IK4MCKLurt1M5tDqmEyTbvntIH4mJ2RA76NxrVI4JOPdwPi11gdB04t89/1O/w1cDnyilFU=";
  $results = sent($encodeJson,$linedata);
	http_response_code(200);
	function getMessage($text)
	{
		$getdata = [];
		$getdata['type'] = 'text';
		$getdata['text'] = $text;
		return $getdata;
	}
  
	function sent($encodeJson,$datas)
	{
		$datasReturn = [];
		$curl = curl_init();
		curl_setopt_array($curl, array(
		  CURLOPT_URL => $datas['url'],
		  CURLOPT_RETURNTRANSFER => true,
		  CURLOPT_ENCODING => "",
      CURLOPT_TIMEOUT => 30,
		  CURLOPT_MAXREDIRS => 10,
		  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		  CURLOPT_CUSTOMREQUEST => "POST",
		  CURLOPT_POSTFIELDS => $encodeJson,
		  CURLOPT_HTTPHEADER => array(
		    "authorization: Bearer ".$datas['token'],
		    "cache-control: no-cache",
		    "content-type: application/json; charset=UTF-8",
		  ),
		));
		$response = curl_exec($curl);
		$err = curl_error($curl);
		curl_close($curl);

		return $datasReturn;
	}
?>