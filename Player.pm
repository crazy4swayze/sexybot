package Player;

use strict;
use warnings;

sub new {
    my $package = shift;
    my %opts    = @_;

    $opts{lc $_} = delete $opts{$_} for keys %opts;
    $opts{$_}    = 0 for qw(balance gun prostitute charm nugget score timeout);
    return bless \%opts, $package;
}

1
