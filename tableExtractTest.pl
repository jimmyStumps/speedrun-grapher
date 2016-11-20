#!/usr/bin/perl
use strict;
use warnings;

use HTML::TableExtract;

my $te = HTML::TableExtract->new( headers => [qw(Rank Player Time Platform
Date)] );

