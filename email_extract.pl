#!/usr/bin/perl
use strict;
use warnings;

my $text = "Please contact us at support\@example.com for assistance.";

if ($text =~ /([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})/) {
    my $email = $1;
    print "Extracted email: $email\n";
} else {
    print "No email address found.\n";
}

