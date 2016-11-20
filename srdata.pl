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
    my $html = `curl -H 'User-Agent: "Mozilla/5.0 (X11; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0"' $site/$game`;
    if ($html =~ /Could not resolve host/ or $html =~ /$game not found./) {
        print "$game isn't on speedrun.com, check for spelling errors.\n";
        next;
    }

    print "$html";
}
