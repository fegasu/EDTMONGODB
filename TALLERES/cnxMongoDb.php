<?php
echo "__________________________________<br>";
$manager = new \MongoDB\Driver\Manager('mongodb://localhost:27017');
$options = ['limit' => 1];
$filter = ['_id' => new \MongoDB\BSON\ObjectID('63222b6f4c5aac0c8e499a9c')];
$query = new \MongoDB\Driver\Query($filter, $options);
echo "__________________________________<br>";
$cursor = $manager->executeQuery('prueba.emp', $query);
$cursorArray = $cursor->toArray();
if(isset($cursorArray[0])) {
var_dump($cursorArray[0]);
}