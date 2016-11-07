<?php
function isIsogram($phrase){
  $usedLetters = [];
  foreach(prepareString($phrase) as $letter){
    if(in_array($letter, $usedLetters)){
      return false;
    }
    $usedLetters[] = $letter;
  }
  return true;
}

function prepareString($string){
  $string = preg_replace("/(\p{P})/", "", $string);
  $string = str_replace(' ', '', $string);
  $string = mb_strtolower($string);
  $string = preg_split("//u", $string, null, PREG_SPLIT_NO_EMPTY);
  return $string;
}
?>
