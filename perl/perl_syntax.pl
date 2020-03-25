 # practical extraction and report language
 # pathologically eclectic rubbish lister

 $x = 10;
 # print $x, "\n";
 print "here is a number: $x\n";
 print 'here is a number: $x\n';
 
 print "\n\n";
 $x = "hello";
 print "here is not a number: $x\n";

 # here is a list:
 @x=(1, 2, 3);
 print "this is not a number: @x\n";
 print "but this is: $x\n";
 print "but this is: $x[1]\n";
   
 # here is an associative arrays
 %x=( key1 => "value1", key2 => "value2");
 print "a hash: %x\n";

 print "key1:  $x{key1}\n";

 for $k (keys %x) {
   print "$k -> $x{$k}\n";
 }

 ## weak typing

 $z = 34;
 print $z * 11, "\n";
 $z = "hello";
 print "multiply a string: ", $z * 11, "\n";
 $z = "10hello";
 print "multiply a string: ", $z * 11, "\n";

 # use strict;
 # print "here's that variable again $zasop9d\n";
 # no strict;

 $str="this is a string";
 $str =~ s/is/IS/g;
 print "$str\n";

 # open(FILE, "data.txt") or die "cannot open!";
 # for $line (<FILE>) {
 #   next unless $line =~ /\.pl/;

 #   print "$line\n";
 # }

 while (<>) {
   next unless /\.pl/;
   print;
 }
