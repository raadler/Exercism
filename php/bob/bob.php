<?php
class Bob{
  public function respondTo($input){
    $bobSays = "";
    if(preg_match("/^\s*$/", $input)){
      $bobSays .= "Fine. Be that way!";
    }else if((preg_match("/[A-Z]{4,}/", $input))||(preg_match("/[A-Z]!/", $input))){
      $bobSays .= "Whoa, chill out!";
    }else if(preg_match("/\?\s*$/", $input)){
      $bobSays .= "Sure.";
    }else{
      $bobSays .="Whatever.";
    }
    return $bobSays;
  }
}


?>
