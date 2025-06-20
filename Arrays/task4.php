<?php

$words = ['elephant', 'dog', 'cat', 'giraffe'];

usort($words, function($a, $b) {
    return strlen($a) - strlen($b);
});

print_r($words);