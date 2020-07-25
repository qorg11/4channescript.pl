#!/usr/bin/perl

use POSIX qw(strftime);
my $file;
my $clone;
my $time;
my $formatted;
foreach (<1*>) {
  $file = $_;
  $clone = $file;
  $clone =~ s/\.[^.]*$//;
  $time = $file;

  $formatted = strftime("%F %H:%M:%S", localtime($time/1000));

  system("touch --date \"$formatted\" $file");

}
