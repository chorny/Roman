use 5.006;
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
        'Exporter' => 5.57,
    },
    ($ExtUtils::MakeMaker::VERSION ge '6.31'? 
     ('LICENSE'		=> 'perl', ) : ()),
    ($ExtUtils::MakeMaker::VERSION ge '6.48'? 
     ('MIN_PERL_VERSION' => 5.006,) : ()),
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Roman-*' },
);
