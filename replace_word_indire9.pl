#!/usr/bin/perl
use strict;
use warnings;
use File::Find;
use File::Copy;


my $directory = "./rtl.v"; 
my $search_pattern = qr/module/;       
my $replacement = "function";            

find(\&process_file, $directory);

sub process_file {
    return unless -f $_;  
    my $file = $File::Find::name;


    open(my $fh, '<', $file) or die "Cannot open $file: $!";
    my @lines = <$fh>;
    close($fh);


    my $modified = 0;
    foreach (@lines) {
        if ($_ =~ s/$search_pattern/$replacement/g) {
            $modified = 1;
        }
    }

    if ($modified) {
        copy($file, "$file.bak") or die "Backup failed: $!";
        open(my $fh_out, '>', $file) or die "Cannot write to $file: $!";
        print $fh_out @lines;
        close($fh_out);
        print "Updated: $file\n";
    }
}

