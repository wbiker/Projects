#!/usr/bin/perl


use strict;
use warnings;
use Data::Dumper;

my @files = glob('./*.q');

print Dumper \@files;


