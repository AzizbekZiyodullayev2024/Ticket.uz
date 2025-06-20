<?php

$numbers = [1, 2, 3, 4];

$squares = array_map(function($num) {
    return $num * $num;
}, $numbers);

print_r($squares);