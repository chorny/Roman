use 5.6.0;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Roman',
    AUTHOR              => 'Alexandr Ciornii <alexchorny AT gmail.com>',
    VERSION_FROM        => 'lib/Roman.pm',
    ABSTRACT_FROM       => 'lib/Roman.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    ($ExtUtils::MakeMaker::VERSION ge '6.30_00'? 
     ('LICENSE'		=> 'perl', ) : ()),
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Roman-*' },
);
