<?php
function isPangram($str){
  $alphabet = range("a","z");

  foreach($alphabet as $letter){
    if(!preg_match("/" . $letter . "/i", $str)){
      return false;
    }}
    return true;
}
?>
