#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;
# Count Vowels – Enter a string and the program counts the number
# of vowels in the text. For added complexity have it report a sum of each vowel found.

my $string = $ARGV[0] if @ARGV;

if(not $string) {
	print "Enter string: ";
	$string = <STDIN>;
	chomp($string);
}

my @chars = split '', $string;

my %vowels;
for my $char (@chars) {
	next unless $char =~ /[aeiou]/;
	$vowels{$char}++;
}


print Dumper \%vowels;
