<?php

$words = ['elephant', 'dog', 'cat', 'giraffe'];

//uzunlik bo'yicha saralsh;
usort($words, function($a, $b) {
    return strlen($a) - strlen($b);
});

print_r($words);