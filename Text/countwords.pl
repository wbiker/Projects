#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;

my $string;

if(@ARGV) {
	if(-e $ARGV[0]) {
		$string = slurp($ARGV[0]);
	}
	else {
		$string = $ARGV[0];
	}	
}
else {
	print "Enter string: ";
	$string = <STDIN>;
	chomp($string);
}

my @words = split /\W/, $string;

my %counter;

$counter{$_}++ for (@words);

print Dumper \%counter;

sub slurp {
	my ($file) = @_;

	open my $fh, "<", $file or die "Could not open file '$file': $!";
	local $/;
	my $ret = <$fh>;
	close($fh);
	return $ret;
}	
