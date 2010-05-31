
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'classical \'risk\' board game',
                       'script_files' => [
                                           'bin/prisk'
                                         ],
                       'license' => 'gpl',
                       'build_requires' => {
                                             'Test::More' => '0.88',
                                             'Scalar::Util' => '0',
                                             'English' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Module::Build' => '0.3601'
                                           },
                       'dist_name' => 'Games-Risk',
                       'dist_author' => [
                                          'Jerome Quelin'
                                        ],
                       'share_dir' => 'share',
                       'module_name' => 'Games::Risk',
                       'requires' => {
                                       'Tk::Balloon' => '0',
                                       'Tk::Font' => '0',
                                       'Sub::Exporter' => '0',
                                       'aliased' => '0',
                                       'Image::Size' => '0',
                                       'Class::Accessor::Fast' => '0',
                                       'Encode' => '0',
                                       'List::Util' => '0',
                                       'Tk::Pane' => '0',
                                       'List::MoreUtils' => '0',
                                       'Tk' => '0',
                                       'Image::Magick' => '0',
                                       'Tk::BrowseEntry' => '0',
                                       'Tk::Sugar' => '0',
                                       'Path::Class' => '0',
                                       'POE' => '0',
                                       'Tk::TableMatrix' => '0',
                                       'MooseX::Has::Sugar' => '0',
                                       'Tk::PNG' => '0',
                                       'FindBin' => '0',
                                       'File::ShareDir' => '0',
                                       'File::Spec::Functions' => '0',
                                       'Moose' => '0',
                                       'MooseX::SemiAffordanceAccessor' => '0',
                                       'MooseX::POE' => '0',
                                       'Tk::Role::Dialog' => '1.101480',
                                       'constant' => '0',
                                       'Readonly' => '0',
                                       'Exporter' => '0',
                                       'Locale::TextDomain' => '0',
                                       'Carp' => '0',
                                       'perl' => '5.010',
                                       'POE::Loop::Tk' => '0',
                                       'Tk::JPEG' => '0',
                                       'MIME::Base64' => '0',
                                       'File::Basename' => '0',
                                       'UNIVERSAL::require' => '0',
                                       'Tk::Pod::Text' => '0'
                                     },
                       'recommends' => {},
                       'configure_requires' => {
                                                 'Module::Build' => '0.3601'
                                               },
                       'dist_version' => '3.101510'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
