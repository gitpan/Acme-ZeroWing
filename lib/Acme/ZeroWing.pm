package Acme::ZeroWing;

use strict;
use vars qw($VERSION @ISA @EXPORT_OK @EXPORT %ZIG);

$VERSION = '0.01_01';

require Exporter;

@ISA = qw(Exporter);

@EXPORT_OK = qw(take_off_every_zig);
@EXPORT = qw(%ZIG);

BEGIN { *ZIG = \%SIG }

sub take_off_every_zig {
    foreach my $zig (values %ZIG) {
        &$zig if (ref($zig) eq 'CODE');
    }
}

1;
__END__

=head1 NAME

Acme::ZeroWing - If you can't figure it out, see the SEE ALSO section.

=head1 SYNOPSIS

  use Acme::ZeroWing qw(take_off_every_zig);

  $ZIG{INT} = sub { print "FOR GREAT JUSTICE!\n" }

  take_off_every_zig();

=head1 DESCRIPTION

IN A.D. 2101 WAR WAS BEGINNING.

=head2 EXPORT

Exports %ZIG, whether you want it to or not, as an alias for %SIG.

Will export one function, take_off_every_zig() if you ask it to.

=head2 FUNCTIONS

take_off_every_zig() - Function to launch all elements of %ZIG.

=head1 SEE ALSO

http://cpan.org/
http://search.cpan.org/
http://www.darkuncle.net/aybabtu/
http://www.engrish.com/

=head1 AUTHOR

Jonathan Steinert, E<lt>hachi@kuiki.netE<gt>

=head1 BLAME

11:25 <@grout> ZeroWing.pm: ISAGN

=head1 COPYRIGHT AND LICENSE

This software is released into the public domain.

=cut
