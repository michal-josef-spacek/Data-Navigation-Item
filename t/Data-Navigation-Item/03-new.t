use strict;
use warnings;

use Data::Navigation::Item;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Data::Navigation::Item->new(
	'title' => 'Title',
);
isa_ok($obj, 'Data::Navigation::Item');

# Test.
$obj = Data::Navigation::Item->new(
	'class' => 'item-class',
	'desc' => 'This is description',
	'id' => 1,
	'image' => '/img/foo.png',
	'location' => '/title',
	'title' => 'Title',
);
isa_ok($obj, 'Data::Navigation::Item');

# Test.
eval {
	Data::Navigation::Item->new;
};
is($EVAL_ERROR, "Parameter 'title' is required.\n",
	"Parameter 'title' is required.");
clean();
