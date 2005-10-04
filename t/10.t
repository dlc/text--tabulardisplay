#!/usr/bin/perl
# vim: set ft=perl:
# $Id: 10.t,v 1.1 2005/10/04 16:39:58 dlc Exp $
# Test add() chaining.

use strict;
use Text::TabularDisplay;
use Test;

BEGIN {
    plan tests => 3;
}

ok(my $t = Text::TabularDisplay->new("name", "favorite color", "shoe size"));
ok($t->add("Joe Shmoe", "red", "9 1/2")
     ->add("Bob Smith", "chartreuse", "11")
     ->add("Jumpin' Jack Flash", "yellow", "12"));
ok($t->render, 
"+--------------------+----------------+-----------+
| name               | favorite color | shoe size |
+--------------------+----------------+-----------+
| Joe Shmoe          | red            | 9 1/2     |
| Bob Smith          | chartreuse     | 11        |
| Jumpin' Jack Flash | yellow         | 12        |
+--------------------+----------------+-----------+");

