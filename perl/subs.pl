
## dynamic variable scope demonstration

$scale=10;

sub calculate {
  my $z=$_[0];
  return $z*$scale;
}


print calculate(83.2), "\n";

{
  local $scale=8;
  print calculate(83.2), "\n";
}

 print calculate(83.2), "\n";



print "----------------\n";


## call-by-reference

sub changeit {
  $_[0]="zzzz";
}

sub dontchangeit {
  my ($arg) = @_;
  $arg="!!!!";
}



$x="a";
print "$x\n";
changeit($x);
print "$x\n";
dontchangeit($x);
print "$x\n";


