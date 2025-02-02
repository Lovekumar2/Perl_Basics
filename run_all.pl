#!/usr/bin/perl
use strict;
use warnings;

# Get the list of all .pl files in the current directory
my @pl_files = glob("*.pl");

# Check if there are .pl files in the directory
if (!@pl_files) {
    print "No .pl files found in the current directory.\n";
    exit;
}

# Execute each .pl file
foreach my $file (@pl_files) {
    print "Running $file...\n";
    system("perl", $file) == 0
        or warn "Failed to execute $file: $!";
}

print "All .pl files executed.\n";

