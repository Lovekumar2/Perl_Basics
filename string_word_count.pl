#!/usr/bin/perl
use strict;
use warnings;

# Prompt the user to input a string
print "Enter a string: ";
my $input = <STDIN>; # Read user input
chomp($input);       # Remove the newline character

# Split the input string into words
my @words = split(/ /, $input); # Split by one or more whitespace characters

# Count the number of words
my $word_count = scalar( @words);

# Print the result
print "The number of words in the string is: $word_count\n";

