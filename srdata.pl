#!/usr/bin/perl -w
use strict;

use HTML::TableExtract;

my $te = HTML::TableExtract->new( headers => [qw(Rank Player Time Platform
Date)] );

$usage="./srdata [game]\n";

if (@ARGV < 1) {
    die "$usage";
} else {
    my $game = $ARGV[0];
}
