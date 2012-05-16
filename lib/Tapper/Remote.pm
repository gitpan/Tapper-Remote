package Tapper::Remote;
BEGIN {
  $Tapper::Remote::AUTHORITY = 'cpan:AMD';
}
{
  $Tapper::Remote::VERSION = '4.0.1';
}
# ABSTRACT: Tapper - Common functionality for remote automation libs

use warnings;
use strict;
use Moose;

extends 'Tapper::Base';
has cfg =>  (is => 'rw', isa => 'HashRef', default => sub { {} });


sub BUILD
{
        my ($self, $config) = @_;
        $self->{cfg}=$config;
}


1; # End of Tapper::Remote

__END__
=pod

=encoding utf-8

=head1 NAME

Tapper::Remote - Tapper - Common functionality for remote automation libs

=head1 SYNOPSIS

This module contains functions that are equal for all remote Tapper
projects (currently Tapper::PRC and Tapper::Installer).
Tapper::Remote itself does not export functionality but instead is the
base image for all modules of the project.

=head2 BUILD

Initialize config.

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut

