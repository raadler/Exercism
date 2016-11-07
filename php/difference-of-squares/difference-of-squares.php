<?php
  function difference($number){
      $squareOfSums = squareOfSums($number);
      $sumOfSquares = sumOfSquares($number);
      $difference = $squareOfSums - $sumOfSquares;
      return $difference;
    }
  function squareOfSums($number){
    $sum = 0;
    for($i = 0; $i < ($number + 1); $i++){
      $sum += $i;
    }
    $squaredSum = $sum * $sum;
    return $squaredSum;
  }
  function sumOfSquares($number){
    $sumSquared = 0;
    for($j = 0; $j < ($number + 1); $j++){
      $square = $j * $j;
      $sumSquared += $square;
    }
    return $sumSquared;
  }
?>
