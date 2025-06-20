<?php

$fruits = ['apple', 'banana', 'orange'];
if (in_array('banana', $fruits)) {
    echo "Banana topildi!\n";
}

$index = array_search('orange', $fruits);

echo "Orange indeksi: $index\n";