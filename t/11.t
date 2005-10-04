#!/usr/bin/perl
# vim: set ft=perl:
# $Id: 11.t,v 1.1 2005/10/04 16:39:58 dlc Exp $

use strict;
use Text::TabularDisplay;
use Test;

BEGIN {
    plan tests => 4;
}

my $data = [
    [ "Joe Shmoe", "red", "9 1/2" ],
    [ "Bob Smith", "chartreuse", "11" ],
    [ "Jumpin' Jack Flash", "yellow", "12" ],
];

ok(my $t = Text::TabularDisplay->new);
ok($t->columns("name", "favorite color", "shoe size"));
ok($t->populate($data)),
ok($t->render, 
"+--------------------+----------------+-----------+
| name               | favorite color | shoe size |
+--------------------+----------------+-----------+
| Joe Shmoe          | red            | 9 1/2     |
| Bob Smith          | chartreuse     | 11        |
| Jumpin' Jack Flash | yellow         | 12        |
+--------------------+----------------+-----------+");
