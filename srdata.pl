#!/usr/bin/perl -w
#use strict;

#use HTML::TableExtract;

#my $te = HTML::TableExtract->new( headers => [qw(Rank Player Time Platform
#Date)] );

$usage = "./srdata [game]\n";
$site = "http://www.speedrun.com";

if (@ARGV < 1) {
    die "$usage";
}

foreach my $game (@ARGV) {
    my $html = `curl $site/$game`;
    if ($html =~ /Could not resolve host/) {
        print "$game isn't on speedrun.com, check for spelling errors.\n";
        next;
    }

    print "$html";
}
