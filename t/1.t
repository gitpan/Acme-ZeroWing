use Test::More tests => 4;
BEGIN { use_ok('Acme::ZeroWing', qw(take_off_every_zig %ZIG)) };

$ZIG{INT} = sub { diag "FOR GREAT JUSTICE!\n"; pass() };

$SIG{INT}->();

take_off_every_zig();

pass();
