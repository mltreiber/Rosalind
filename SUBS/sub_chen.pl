#!/usr/bin/perl
# sub_chen.pl by chen
use strict; use warnings;


die "usage:perl sub_chen.pl <file>\n" unless @ARGV == 1;
open IN,"<$ARGV[0]";
while (<>)  {
	chomp;
	my $seq = <IN>;
	my $motif = <IN>;
	my ($pos,$now) = (0,-1);
	until ($pos == -1) {
		$pos = index ($seq,$motif,$now+1);
		$now = $pos;
		print $pos unless $pos < 0;
	}
}
close IN;
