<?php 
include_once "connect_api.php";
$object = new Connect();
$conn = $object->ConnectDB();
header("Access-Control-Allow-Origin: *");

$states = "SELECT estado FROM states";
$result_states = $conn->prepare($states);
$result_states->execute();
$dados_states=$result_states->fetchAll(PDO::FETCH_ASSOC);
print json_encode($dados_states, JSON_UNESCAPED_UNICODE);
$conn = NULL;

// while($row_user = $result_users->fetch(PDO::FETCH_ASSOC)){
//     extract($row_user);
//     $dados .= "<tr><td>$id</td><td>$nameinfluencer</td><td>$categoria</td><td>$youtube</td><td>$facebook</td>
//                <td>$instagram</td><td>$tiktok</td><td>$kwai</td><td>$statuscampaign</td></tr>";
// }

// echo $dados;
?>