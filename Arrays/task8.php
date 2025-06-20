<?php

$array1 = ['apple', 'banana', 'orange'];
$array2 = ['banana', 'grape'];

$diff = array_diff($array1, $array2);

print_r($diff);