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

package Games::Risk::I18N;
BEGIN {
  $Games::Risk::I18N::VERSION = '3.101430';
}
# ABSTRACT: game internationalization

use Encode;
use Locale::TextDomain 'Games-Risk';
use Sub::Exporter -setup => { exports => [ qw{ T } ] };


# -- public subs


sub T { return decode('utf8', __($_[0])); }

1;


=pod

=head1 NAME

Games::Risk::I18N - game internationalization

=head1 VERSION

version 3.101430

=head1 SYNOPSIS

    use Games::Risk::I18N;
    say T('message');

=head1 DESCRIPTION

This module handles the game's internationalization (i18n). It is using
C<Locale::TextDomain> underneath, so refer to this module's documentation
for more information.

=head1 METHODS

=head2 my $locstr = T( $string );

Performs a call to C<gettext> on C<$string>, convert it from utf8 and
return the result.

=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2008 by Jerome Quelin.

This is free software, licensed under:

  The GNU General Public License, Version 3, June 2007

=cut


__END__

