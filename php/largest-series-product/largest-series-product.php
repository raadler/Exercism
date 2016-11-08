<?php
class Series{
  private $input = "";
  public function __construct($digits=""){
    $this->input = $digits . "";
  }

  function largestProduct($length){
    $largestProduct = 0;
    if($length < 0){
      throw new InvalidArgumentException('Length must be greater than or equal to zero.');
    }else if($length > strlen($this->input)){
      throw new InvalidArgumentException('Length must be less than or equal to the number of digits in the series.');
    }else if($length == 0){
      $largestProduct = 1;
    }else{
      if(preg_match("/\D/", $this->input)){
        throw new InvalidArgumentException('Series cannot include non-digit characters');
      }else{
        $numArr = str_split($this->input);
        $counter = 0;
        for($i = 0; $i < count($numArr)-($length - 1); $i++){
          $toTest = 1;
          for($j = 0; $j < $length; $j++){
            $toTest = $toTest * $numArr[$j+$i];
          }
          if($toTest > $largestProduct){
            $largestProduct = $toTest;
          }
        }
      }
    }
      return $largestProduct;
    }
  }
?>
