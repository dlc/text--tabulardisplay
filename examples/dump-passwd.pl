#!/usr/bin/perl -l

use strict;
use Text::TabularDisplay;

my $t = Text::TabularDisplay->new("uid", "login", "name");
local *PASSWD;

open PASSWD, "/etc/passwd"
    or die "Can't open /etc/passwd: $!";

$t->add((split /:/, $_)[2, 0, 4])
    for <PASSWD>;

close PASSWD
    or die "Can't close /etc/passwd: $!";

print $t->render;
