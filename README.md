# NAME

Alien::LuaJIT - Alien module for asserting a luajit is available

# SYNOPSIS

    use Alien::LuaJIT;
    use Env qw( @PATH );

    unshift @ENV, Alien::LuaJIT->bin_dir;
    my $executable = Alien::LuaJIT->exe;

# DESCRIPTION

See the documentation of Alien::Base for details on the API of this module.

This module looks for a copy of LuaJIT installed in your system, or
builds version 2.0.5 from sources downloaded from [http://www.luajit.org/download.html](http://www.luajit.org/download.html).
It exposes the location of the installed headers and shared objects via a
simple API to use by downstream dependent modules.

# METHODS

- **exe**

        my $lua = Alien::LuaJIT->exe;

    Returns the name of the Lua executable.

    When using the executable compiled by this distribution, you
    will need to make sure that the directories returned by `bin_dir` are added
    to your `PATH` environment variable. For more info, check the documentation
    of [Alien::Build](https://metacpan.org/pod/Alien::Build).

# HELPERS

- **lua**

    The `%{lua}` string will be interpolated by Alien::Build into the name
    of the executable (as returned by **exe**);

# SEE ALSO

- http://www.lua.org
- http://www.luajit.org
- Alien::Lua
- Alien::Build

# AUTHOR

Steffen Mueller <smueller@cpan.org>

# Contributors

José Joaquín Atria <jjatria@cpan.org>

# COPYRIGHT AND LICENSE

Copyright (C) 2013-2018 by Steffen Mueller

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself, either Perl version 5.8.1 or, at your option, any later version of Perl 5 you may have available.
