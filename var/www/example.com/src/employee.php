<?php
$connectbdd = mysqli_connect("mysql", "example_db_user", "example_db_password", "applipaie");
$sql = $connectbdd->query("SELECT * FROM employee");
while($donnees = $sql->fetch_assoc())
{
echo $donnees[header('Location: /fiche-de-paie-master/')];
}
?>