#!/usr/bin/perl
#
#use strict;
#use warnings;
#
# reverses a string entered on the command line

print "Enter string: ";
my $string = <STDIN>;

print scalar reverse $string, "\n";
