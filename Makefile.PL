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
        'Exporter' => 5.57,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    ($ExtUtils::MakeMaker::VERSION ge '6.31'? 
     ('LICENSE'		=> 'perl', ) : ()),
    ($ExtUtils::MakeMaker::VERSION ge '6.48'? 
     ('MIN_PERL_VERSION' => 5.006,) : ()),
    META_MERGE => {
        resources => {
            repository => 'http://github.com/chorny/Roman',
        },
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Roman-*' },
);
