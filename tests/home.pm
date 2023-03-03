# vi: set shiftwidth=4 tabstop=4 expandtab:
use base 'basetest';
use strict;
use testapi;
use utils;

sub run {
    my $self = shift;
    assert_and_click('agl-home', 10);
    assert_screen('agl-home', 10);
}

sub test_flags {
    # Treat success as a milestone worthy of updating ‘last good’ status
    return { fatal => 1, milestone => 1 };
}

1;
