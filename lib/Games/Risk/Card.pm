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

package Games::Risk::Card;
BEGIN {
  $Games::Risk::Card::VERSION = '3.101430';
}
# ABSTRACT: map card

use base qw{ Class::Accessor::Fast };
__PACKAGE__->mk_accessors( qw{ country type } );


#--
# METHODS

# -- public methods

#
# $card->destroy;
#
# Remove all circular references of $card, to prevent memory leaks.
#
#sub DESTROY { say "destroy: $_[0]"; }
sub destroy {
    my ($self) = @_;
    $self->country(undef);
}




1;



=pod

=head1 NAME

Games::Risk::Card - map card

=head1 VERSION

version 3.101430

=head1 SYNOPSIS

    my $card = Games::Risk::Card->new(\%params);

=head1 DESCRIPTION

This module implements a map card, with all its characteristics.

=head1 METHODS

=head2 Constructor

=over 4

=item * my $card = Games::Risk::Card->new( \%params )

Create a new card. Mandatory param is C<type>, and there's an optional
param C<country>.

=back

=head2 Accessors

The following accessors (acting as mutators, ie getters and setters) are
available for C<Games::Risk::Card> objects:

=over 4

=item * country()

country corresponding to the card.

=item * type()

the type of the card: C<artillery>, C<cavalry>, C<infantery> or
C<wildcard>

=back

=head2 Methods

=over 4

=item * $card->destroy()

Remove all circular references of C<$card>, to prevent memory leaks.

=back

=head1 SEE ALSO

L<Games::Risk>.

=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2008 by Jerome Quelin.

This is free software, licensed under:

  The GNU General Public License, Version 3, June 2007

=cut


__END__


