package Data::Navigation::Item;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.09 qw(check_length check_number check_required);
use Mo::utils::CSS 0.02 qw(check_css_class);
use Mo::utils::URI qw(check_url);

our $VERSION = 0.01;

has css_class => (
	is => 'ro',
);

has desc => (
	is => 'ro',
);

has id => (
	is => 'ro',
);

has image => (
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

	# Check CSS class.
	check_css_class($self, 'css_class');

	# Check desc.
	check_length($self, 'desc', 1000);

	# Check id.
	check_number($self, 'id');

	# Check image.
	# XXX relative path or url.

	# Check title.
	check_required($self, 'title');
	check_length($self, 'title', 100);

	# Check url.
	# XXX relative url
	check_url($self, 'url');

	return;
}

1;

__END__
