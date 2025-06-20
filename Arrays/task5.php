<?php

$numbers = [1, 2, 3, 4, 5, 6];

$even = array_filter($numbers, function($num) {
    return $num % 2 == 0;
});

print_r($even);