
<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

// Configuration
$host = "172.19.0.5";
$port = "3306";
$dbName = "ProjetMedecin";
$username = "phpmyadmin";
$password = "0550002D";
$outputDir = "\\var\\etc\\html\\";

// Nom du fichier de sauvegarde
$backupFile = $outputDir . $dbName . "_" . date("Y-m-d_H-i-s") . ".sql";

// Commande de sauvegarde
$command = "mysqldump -h {$host} -P {$port} -u {$username} -p{$password} {$dbName} > {$backupFile}";

// Exécution de la commande
exec($command, $output, $returnCode);

// Vérification du code de retour
if ($returnCode === 0) {
      echo "La sauvegarde a été créée avec succès : {$backupFile}";
} else {
      echo "Erreur lors de la création de la sauvegarde : " . implode("\n", $output);
}