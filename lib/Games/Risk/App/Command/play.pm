#
# This file is part of Games-Risk
#
# This software is Copyright (c) 2008 by Jerome Quelin.
#
# This is free software, licensed under:
#
#   The GNU General Public License, Version 3, June 2007
#
use 5.010;
use strict;
use warnings;

package Games::Risk::App::Command::play;
{
  $Games::Risk::App::Command::play::VERSION = '3.112820';
}
# ABSTRACT: play a risk game

use Games::Risk::App -command;


# -- public methods

sub description { 'Play a Risk game.'; }

sub opt_spec {
    my $self = shift;
    return (
        [],
    );
}

sub execute {
    my ($self, $opts, $args) = @_;

    require Games::Risk;
    Games::Risk->run;
}


1;


=pod

=head1 NAME

Games::Risk::App::Command::play - play a risk game

=head1 VERSION

version 3.112820

=head1 DESCRIPTION

This command launch a prisk game. Most of the time, this is what you
want to do.

=head1 AUTHOR

Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2008 by Jerome Quelin.

This is free software, licensed under:

  The GNU General Public License, Version 3, June 2007

=cut


__END__


