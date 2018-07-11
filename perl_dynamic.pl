sub A {
  local $b = 4; #Dynamic
  sub B(){
      $b++;
      print ("In sub B b=",$b, "\n"); # because of "local" keyword b can be seen other all function(does not matter same block or not)
      C();
  }
  B();
  print ("In sub A b=",$b, "\n");# because of "local" keyword b can be seen other all function(does not matter same block or not)
}
sub C(){
    print ("In sub C b=",$b, "\n");# because of "local" keyword b can be seen other all function(does not matter same block or not)
}
$b = 2;
A();