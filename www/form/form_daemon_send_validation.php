<?php 

include('header.php');

if (!empty($_GET['iddaemon'])){
	$request =  new Api();
	$request -> add_request('confDaemonSendValidation', array($_GET['iddaemon']));
	$result  =  $request -> send_request();
	
	echo $result->confDaemonSendValidation;
}

?>