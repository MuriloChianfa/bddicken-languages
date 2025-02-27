<?php

$u = (int) $argv[1];                                # Get an input number from the command line
$r = rand(0, 10000);                                # Get a random number 0 <= r < 10k
$a = array_fill(0, 10000, 0);    # Array of 10k elements initialized to 0
foreach ($a as &$c) {                   # 10k outer loop iterations
    for ($j = 0; $j < 100000; $j++) {               # 100k inner loop iterations, per outer loop iteration
        $c += $j%$u;                    # Simple sum
    }
    $c += $r;                                   # Add a random value to each element in array
}
echo $a[$r];                                        # Print out a single element from the array
