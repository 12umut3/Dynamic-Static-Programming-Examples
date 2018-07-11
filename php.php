<html>
<head>
</head>
<body>
<?php
        function A() {
            $b = 3; // it defines in function A
            $a = 4; // it defines in function B
            function B() {
                $b = 6; // for b = b+b;
                global $a; // it takes a global a value 
                print "b in function B: $b \r\n"; // print local b value in function B
                print "a in function B: $a \r\n"; // print global a value in function A
                C();
            }
            B();
            print "b in function A: $b \r\n"; // it uses local b in function A
            print "a in function A: $a \r\n"; // it uses local a in function A
        }
        function C(){
                global $a; // it provides access to global a
                $gb = $GLOBALS['b']; // it provide to access global b in A function(close upper function)
                print "b in function C: $gb \r\n"; // print global b
                print "a in function C: $a \r\n"; // print global a
        }
        $b = 5;
        $a = 6;
        A();
?>
</body>
</html>

