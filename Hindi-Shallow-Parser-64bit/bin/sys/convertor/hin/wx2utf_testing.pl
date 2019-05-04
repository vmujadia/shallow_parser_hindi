#!/usr/bin/perl

#use Encode;
require "lib/IndicCC.pl" or die "IndicCC.pl file not found\n";

$infile = $ARGV[0];
$lang = $ARGV[1];

open INFILE, $infile or die "failed to oprn $infile : $!";

while(<INFILE>)
{
        $line = $_;
        #print "INPUT TEXT:\n", $line, "\n";

        $line = &wx2utf($line, $lang);
        #print "OUTPUT TEXT:\n", $line, "\n";
	binmode STDOUT, ":utf8";
        print $line;
}

