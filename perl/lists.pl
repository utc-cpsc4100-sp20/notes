
@list = (1,2,3,4);

print "@list\n";

push @list, 100;
print "@list\n";

print pop @list, "\n";
print "@list\n";


print shift @list, "\n";
print "@list\n";

unshift @list, "X";
print "@list\n";


{
  local $"=",";
  print "@list\n";
}

print "@list\n";
