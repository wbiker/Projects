#!/usr/bin/perl


use strict;
use warnings;
use feature "say";
use Data::Dumper;

my @files = glob('./*.q');


my $filenumber = int(rand($#files));

say "file: $filenumber";

open my $fh , "<", $files[$filenumber] or die "could not open file $files[$filenumber]: $!\n";

my @lines;
while(my $line = <$fh>) {
	push(@lines, $line);
}

close($fh);

my $linenumber = int(rand($#lines));

my $question = $lines[$linenumber];

my @quiz = split(";", $question);

say $quiz[0];
say "1 $quiz[1]";
say "2 $quiz[2]";
say "3 $quiz[3]";
print " Your unswer: ";
my $ans = <STDIN>;

if($ans == $quiz[4]) {
	say "Congrats, you're right";
}
else {
	say "damn, you're wrong";
}
