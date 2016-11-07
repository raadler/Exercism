<?php
function from($moment){
  $inseconds = $moment->getTimestamp();
  $gigasecondLater = $inseconds + GIGASECOND;
  $newMoment = new DateTime();
  $newMoment->setTimezone(new DateTimeZone("UTC"));
  $newMoment->setTimestamp($gigasecondLater);
  return $newMoment;
}
define("GIGASECOND", 1000000000);
?>
