#!/usr/bin/perl
# vim: set ft=perl:
# $Id: 08.t,v 1.1 2005/10/04 16:39:58 dlc Exp $

use strict;
use Text::TabularDisplay;
use Test;

BEGIN {
    plan tests => 5;
}

ok(my $t = Text::TabularDisplay->new);
ok($t->add("Joe Shmoe", "red", "9 1/2"));
ok($t->add("Bob Smith", "chartreuse", "11"));
ok($t->add("Jumpin' Jack Flash", "yellow", "12"));
ok($t->render, 
"+--------------------+------------+-------+
| Joe Shmoe          | red        | 9 1/2 |
| Bob Smith          | chartreuse | 11    |
| Jumpin' Jack Flash | yellow     | 12    |
+--------------------+------------+-------+");
