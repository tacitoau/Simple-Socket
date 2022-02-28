use IO::Socket::INET;
$| = 1;
my $socket = new IO::Socket::INET();
    PeerHost => $ARGV[0],
    PeerPort => $ARGV[1],
    Proto => 'tcp',
); die "cannot connect: $!\n" unless $socket;
my $req = $ARGV[2];
my $size = $socket -> send($req);
print "sent data of length $size\n";
my response = "";
$socket -> recv($response, 2048);
print "RECV: $response\n";
