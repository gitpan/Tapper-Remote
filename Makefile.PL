
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Tapper - Common functionality for remote automation libs",
  "AUTHOR" => "AMD OSRC Tapper Team <tapper\@amd64.org>",
  "BUILD_REQUIRES" => {
    "File::Temp" => 0,
    "Log::Log4perl" => 0,
    "POSIX" => 0,
    "Test::MockModule" => 0,
    "Test::More" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Tapper-Remote",
  "EXE_FILES" => [],
  "LICENSE" => "open_source",
  "NAME" => "Tapper::Remote",
  "PREREQ_PM" => {
    "Getopt::Long" => 0,
    "IO::Socket::INET" => 0,
    "Moose" => 0,
    "Moose::Role" => 0,
    "Net::TFTP" => 0,
    "Socket" => 0,
    "Sys::Hostname" => 0,
    "Tapper::Base" => 0,
    "URI::Escape" => 0,
    "YAML::Syck" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "4.1.1",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



