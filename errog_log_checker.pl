#!/usr/bin/perl
use strict;
use warnings;
print "enter the log file:";
chomp( my $log_file = <STDIN>);   
my $report_file = "log_report.txt";


my $timestamp_regex = qr/\b\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\b/;  

my $error_regex = qr/\b(ERROR|WARNING)\b/;
my $user_activity_regex = qr/User\s+(\w+)\s+(logged in|logged out|performed action)/;


my %error_count;
my %user_activities;

open(my $fh, '<', $log_file) or die "Cannot open log file: $!";
open(my $report_fh, '>', $report_file) or die "Cannot create report file: $!";

while (my $line = <$fh>) {
    chomp $line;

   
    if ($line =~ /$timestamp_regex/) {
        my $timestamp = $&;

        
        if ($line =~ /$error_regex/) {
            my $error_type = $1;
            $error_count{$error_type}++;
        }

       
        if ($line =~ /$user_activity_regex/) {
            my $user = $1;
            my $action = $2;
            $user_activities{"$user $action"}++;
        }
    }
}

close($fh);


print $report_fh "=== Log Analysis Report ===\n\n";

print $report_fh "Error Summary:\n";
foreach my $error (keys %error_count) {
    print $report_fh "$error: $error_count{$error}\n";
}

print $report_fh "\nUser Activities:\n";
foreach my $activity (keys %user_activities) {
    print $report_fh "$activity: $user_activities{$activity}\n";
}

close($report_fh);
print "Log analysis complete! Report saved as $report_file\n";

