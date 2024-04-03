<?php

$ulica=$_POST["ulica"];
$polaczenie=new mysqli("localhost","root","","20.03.2024");
$polaczenie->query("INSERT INTO ulice(ulica) VALUES ('$ulica')");
$polaczenie->close();
echo "Dodano ulice $ulica <br/>";
















?>
