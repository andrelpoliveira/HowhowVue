<?php 
include_once "connect_api.php";
$object = new Connect();
$conn = $object->ConnectDB();
header("Access-Control-Allow-Origin: *");

$consult = "SELECT id, nameinfluencer, categoria, youtube, facebook, instagram, tiktok, kwai, statuscampaign, picture FROM influencers";
$result_users = $conn->prepare($consult);
$result_users->execute();
$dados=$result_users->fetchAll(PDO::FETCH_ASSOC);
print json_encode($dados, JSON_UNESCAPED_UNICODE);
$conn = NULL;

// while($row_user = $result_users->fetch(PDO::FETCH_ASSOC)){
//     extract($row_user);
//     $dados .= "<tr><td>$id</td><td>$nameinfluencer</td><td>$categoria</td><td>$youtube</td><td>$facebook</td>
//                <td>$instagram</td><td>$tiktok</td><td>$kwai</td><td>$statuscampaign</td></tr>";
// }

// echo $dados;
?>