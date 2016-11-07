<?php
function raindrops($number){
  $output = '';
  if($number % 3 == 0){$output .= 'Pling';}
  if($number % 5 == 0){$output .= 'Plang';}
  if($number % 7 == 0){$output .= 'Plong';}
  //if the number does not have 3, 5, or 7 as factors the length of output will be 0
  if(strlen($output) == 0){$output .= (string)$number;}
  return $output;
}
?>
