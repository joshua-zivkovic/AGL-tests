# vi: set shiftwidth=4 tabstop=4 expandtab:
use base 'basetest';
use strict;
use testapi;
use utils;

sub run {
    my $self = shift;
    assert_screen('agl-boot', 10);
    assert_screen('agl-cluster', 10);
    assert_screen('agl-drive-3', 10);
    assert_screen('agl-drive-5', 10);
    assert_screen('agl-drive-4-lane', 60);
    assert_screen('agl-drive-2-hazard', 60);
    assert_screen('agl-park-warn', 60);
}

sub test_flags {
    # Treat success as a milestone worthy of updating ‘last good’ status
    return { fatal => 1, milestone => 1 };
}

1;
