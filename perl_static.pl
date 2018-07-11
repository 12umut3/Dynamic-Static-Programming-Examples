sub A {
  my $a = 3; # lexical (static)
  sub B(){
      $a++;
      print ("In sub B a=",$a, "\n"); # because of "my" keyword this function can see a value and change it (if they are in same block)
      C();
  }
  B();
  print ("In sub A a=",$a, "\n"); # because of "my" keyword this function can see a value or change it(it they are in same block)
}
sub C(){
    print ("In sub C a=",$a, "\n");  # "my" is not provide a visibility out of the block so this function cannot see this and call outside of the function a 
}
$a = 1; 
A();