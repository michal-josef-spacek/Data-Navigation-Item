package Data::Navigation::Item;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.09 qw(check_length check_number check_required);
use Mo::utils::URI qw(check_url);

our $VERSION = 0.01;

has desc => (
	is => 'ro',
);

has id => (
	is => 'ro',
);

has title => (
	is => 'ro',
);

has url => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check desc.
	check_length($self, 'desc', 1000);

	# Check id.
	check_number($self, 'id');

	# Check title.
	check_required($self, 'title');
	check_length($self, 'title', 100);

	# Check url.
	check_url($self, 'url');

	return;
}

1;

__END__
