use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Acme::CPANAuthors::Canadian',
    license             => 'perl',
    dist_author         => q|Zoffix <'zoffix@cpan.org'>|,
    dist_version_from   => 'lib/Acme/CPANAuthors/Canadian.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Acme::CPANAuthors::Register' => 0,
        'Acme::CPANAuthors'           => 0.06,
    },
    add_to_cleanup      => [ 'Acme-CPANAuthors-Canadian-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
