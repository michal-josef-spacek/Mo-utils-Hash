package Mo::utils::Hash;

use base qw(Exporter);
use strict;
use warnings;

use Error::Pure qw(err);
use Readonly;

Readonly::Array our @EXPORT_OK => qw(check_hash);

our $VERSION = 0.01;

sub check_hash {
	my ($self, $key) = @_;

	if (! exists $self->{$key}) {
		return;
	}

	if (ref $self->{$key} ne 'HASH') {
		err "Parameter '$key' isn't hash reference.",
			'Reference', (ref $self->{$key}),
		;
	}

	return;
}

1;
