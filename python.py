def A():
  b = 3;
  a = 4;
  def B():
      global b; # it calls gloabal b

      #nonlocal a; # it calls the a from parent function(after python version 3.0)
      b = b+b; # it changes global b

      print ('In def B b=',b); # it prints global b 
      print ('In def B a=',a); # it prints a from parent class
      C(); # call function C

  B();
  print ('In def A b=',b); # it uses local b in A
  print ('In def A a=',a); # it uses local a in A

def C():
    print ('In def C b=',b);  # it uses global b(changed upward)
    print ('In def C a=',a);  # it uses global a

b = 5;
a = 6;

A(); # call the function A