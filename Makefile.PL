use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'		=> 'Acme::ZeroWing',
    'VERSION_FROM'	=> 'lib/Acme/ZeroWing.pm',
    'PREREQ_PM'		=> {
        Test::More => 0,
        Exporter => 0,
	ExtUtils::MakeMaker => 0,
    },
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (AUTHOR     => 'Jonathan Steinert <hachi-Acme-ZeroWing@kuiki.net>') : ()),
);
