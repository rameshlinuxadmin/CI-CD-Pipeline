<?php
$output = shell_exec('hostname');
echo "<pre><h1>This application hosted through the container $output</h1></pre>";
?>
