#!/usr/bin/perl
# sub_chen.pl by chen
use strict; use warnings;

die "usage:perl sub_chen.pl <file>\n" unless @ARGV == 1;
open IN,"<$ARGV[0]";
chomp(my $seq = <IN>);
chomp(my $motif = <IN>);

my $pos = 0;
my $now = -1;
my $position;

until ($pos == -1) {
	$pos = index ($seq,$motif,$now+1);
	$now = $pos;
	$position = $pos+1;
	print "$position\t" unless $pos < 0;
}
close IN;
