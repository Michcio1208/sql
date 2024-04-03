<?php

$gatunek=$_POST["gatunek"];
$rodzaj=$_POST["rodzaj"];
$polaczenie=new mysqli("localhost","root","","20.03.2024");
$polaczenie->query("INSERT INTO drzewa(Gatunek, Rodzaj) VALUES ('$gatunek','$rodzaj')");
$polaczenie->close();
echo "Dodano drzewo $rodzaj $gatunek <br/>";









?>
