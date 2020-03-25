#!/usr/bin/perl -w


# this special syntax assigns every line from every file specified at the
# command line (and then stdin) to the variable $_ (also known as "the
# universal argument")
while (<>) {

  # split the default argument into words separated by 1 or more whitespace
  # characters
  @words = split /\s+/;

  # for each word as split above...
  for $w (@words) {

    # delete all non-alphabetic characters
    $w =~ s/[^a-z]//ig;

    # go to next for iteration if the above substitution resulted in an empty
    # string
    next unless $w;

    # increment the possibly non-existent value associated with the lowercase
    # version of $w in the %counts hash
    $counts{lc $w}++;
  }
}

## uncomment this to see the structure of the counts hash
# use Data::Dumper;
# print Dumper(\%counts);

# sort the keys of %counts by their associated values (descending)
@sorted = sort { $counts{$b} <=> $counts{$a} } keys %counts;

# shift the first 5 keys off the sorted list and print their associated counts
for $c (1 .. 5) {
  $w = shift @sorted;
  print "$c: $w - $counts{$w}\n";
}
