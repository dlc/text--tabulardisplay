package Text::TabularDisplay;

use strict;
use vars qw(%PREREQ_PM @EXE_FILES %clean);

use ExtUtils::MakeMaker;

%PREREQ_PM = ('IO::File');
%clean     = ('FILES' => '$(DISTVNAME).tar$(SUFFIX)');

WriteMakefile(
    NAME         => __PACKAGE__,
    VERSION_FROM => "TabularDisplay.pm",
    PREREQ_PM    => \%PREREQ_PM,
    clean        => \%clean,
);

__END__
