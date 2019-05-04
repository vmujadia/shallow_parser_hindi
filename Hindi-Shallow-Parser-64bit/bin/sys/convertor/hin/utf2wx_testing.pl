#!/usr/bin/perl

#use Encode;

use strict;

require "lib/IndicCC.pl" or die "IndicCC.pl file not found\n";

#use Memoize;
#memoize('utf2wx');


my $infile = $ARGV[0];
my $lang = $ARGV[1];

open INFILE, $infile or die "failed to open : $infile $!";

while(<INFILE>)
{
        my $line = $_;
        #print "INPUT TEXT:\n", $line, "\n";	
        $line = &utf2wx($line, $lang);
        #print "OUTPUT TEXT:\n", $line, "\n";
	binmode STDOUT, ":utf8";
	print $line;
}

