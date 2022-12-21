# vi: set shiftwidth=4 tabstop=4 expandtab:
use base 'basetest';
use strict;
use testapi;
use utils;

sub run {
    my $self = shift;
    sleep 10;
    select_console 'root-virtio-terminal';
    sleep 5;
    type_string('root');
    send_key('ret');
    sleep 5;
    type_string('Signalsource-control-panel');
    send_key('ret');
    sleep 5;
    send_key('ret');
    select_console 'x11';

    assert_screen('elisa-demo', 60);
}

sub test_flags {
    # Treat success as a milestone worthy of updating ‘last good’ status
    return { fatal => 1, milestone => 1 };
}

1;
