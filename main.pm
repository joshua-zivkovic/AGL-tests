use strict;
use testapi;
use autotest;
use needle;

my $distri = testapi::get_var('CASEDIR') . '/lib/agldistro.pm';
require $distri;
testapi::set_distribution(agldistro->new());

autotest::loadtest "tests/boot.pm";
autotest::loadtest "tests/safety.pm";

1;
