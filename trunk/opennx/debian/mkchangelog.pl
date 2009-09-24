#!/usr/bin/perl

use Date::Manip;

my $version = shift(@ARGV);
my $inmsg = 0;
my $infiles = 0;
my $stamp = '';
my $name = '';
my $msg = '';

my %names = (
    'felfert' => 'Fritz Elfert <felfert@users.sf.net>',
    'aderigs' => 'Achim Derigs <aderigs@users.sf.net>',
    'medozas' => 'Michael Kromer <medozas@users.sf.net>',
);

while (<>) {
    chomp;
    if (/^\s*$/) {
        if ($inmsg) {
            $inmsg = 0;
	    next if ($msg eq '');
            print 'opennx (' . $version . '.' . $rev . ') unstable; urgency=low' . "\n";
            print $msg;
            print ' -- ' . $names{$name} . '  ' . $stamp . "\n\n";
            if ($msg =~ /Bumped up version/) {
                my @vt = split(/\./, $version);
                $vt[$#vt]--;
                $version = join('.', @vt);
            }
            $msg = '';
        }
        next;
    }
    if (/^\s+\*\s\[r(\d+)\]\s(.*)$/) {
        $rev = $1;
        $files = $2;
        if ($files =~ /:/) {
            $inmsg = 1;
        } else {
            $infiles = 1;
        }
        $msg = '';
        next;
    }
    if (/^(\d+-\d+-\d+\s\d+:\d+)\s+(\S+)/) {
        $stamp = UnixDate($1, "%a, %d %b %Y %H:%M:%S %z");
        $name = $2;
        next;
    }
    if ($infiles) {
        if (/:/) {
            $infiles = 0;
            $inmsg = 1;
        }
        next;
    }
    if ($inmsg) {
        my $line = $_;
        $line =~ s/^\s+//;
        $line =~ s/\s+$//;
        $line =~ s/^[\-\*]/  */;
        $line = "    ".$line unless ($line =~ /^\s\s\*/);
        $msg .= $line . "\n";
    }
}
