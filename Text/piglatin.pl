#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: piglatin.pl
#
#        USAGE: ./piglatin.pl  
#
#  DESCRIPTION: Pig Latin – Pig Latin is a game of alterations played on the English language game. To create the Pig Latin form of an English word the initial consonant sound is transposed to the end of the word and an ay is affixed (Ex.: "banana" would yield anana-bay). Read Wikipedia for more information on rules.
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wba (wolf), wbiker@gmx.at
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 01/08/13 18:45:20
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use feature 'say';

my $word = $ARGV[0] // "banane";

if($word =~ /\A([bcdfghjklmnpqrsßtvwxz])(.*)/i) {
	# found consonant as first character
	my $con = $1;
	my $rest_word = $2;
	say "$rest_word-${con}ay";
}
