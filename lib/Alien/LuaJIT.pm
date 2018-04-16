package Alien::LuaJIT;

use strict;
use warnings;

our $VERSION = 'v2.0.5.1';
use parent 'Alien::Base';

sub exe { return $_[0]->runtime_prop->{command} }

sub alien_helper {
    return +{ lua => sub { __PACKAGE__->exe } }
}

1;

__END__

=encoding UTF-8

=head1 NAME

Alien::LuaJIT - Alien module for asserting a luajit is available

=head1 SYNOPSIS

    use Alien::LuaJIT;
    use Env qw( @PATH );

    unshift @ENV, Alien::LuaJIT->bin_dir;
    my $executable = Alien::LuaJIT->exe;

=head1 DESCRIPTION

See the documentation of Alien::Base for details on the API of this module.

This module looks for a copy of LuaJIT installed in your system, or
builds version 2.0.5 from sources downloaded from L<http://www.luajit.org/download.html>.
It exposes the location of the installed headers and shared objects via a
simple API to use by downstream dependent modules.

=head1 METHODS

=over 4

=item B<exe>

    my $lua = Alien::LuaJIT->exe;

Returns the name of the Lua executable.

When using the executable compiled by this distribution, you
will need to make sure that the directories returned by C<bin_dir> are added
to your C<PATH> environment variable. For more info, check the documentation
of L<Alien::Build>.

=back

=head1 HELPERS

=over 4

=item B<lua>

The C<%{lua}> string will be interpolated by Alien::Build into the name
of the executable (as returned by B<exe>);

=back

=head1 SEE ALSO

=over 4

=item * http://www.lua.org

=item * http://www.luajit.org

=item * Alien::Lua

=item * Alien::Build

=back

=head1 AUTHOR

Steffen Mueller <smueller@cpan.org>

=head1 Contributors

José Joaquín Atria <jjatria@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2013-2018 by Steffen Mueller

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself, either Perl version 5.8.1 or, at your option, any later version of Perl 5 you may have available.

=cut
