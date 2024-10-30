#!/usr/bin/perl

use strict; 
use warnings;
use Getopt::Long;

=pod
To allow a script to be executed manually with the variables as arguments, you can modify the script to accept command-line arguments and assign them directly to the appropriate variables.
Use Getopt::Long for handling multiple arguments conveniently.
=cut

# Declare variables
my ($uniqueid, $client_number, $technic_number, $number_dialed, $cl_code, $dialStatus, $parlato);

# Retrieve arguments manually
GetOptions(
    "uniqueid=s"       => \$uniqueid,
    "client_number=s"  => \$client_number,
    "technic_number=s" => \$technic_number,
    "number_dialed=s"  => \$number_dialed,
    "cl_code=i"        => \$cl_code,
    "dialStatus=s"     => \$dialStatus,
    "parlato=i"        => \$parlato,
);

# Check if all required arguments are provided
die "Missing required arguments!\n" unless defined $uniqueid && defined $client_number && defined $technic_number && defined $number_dialed && defined $cl_code && defined $dialStatus && defined $parlato;


=pod
Example of usage

ast10012:~ # perl script.pl --uniqueid=1728979286.167608 --client_number=xxxxxxxxxx --technic_number=xxxxxxxxxxx --number_dialed=xxxxxxxxxxxx --cl_code=xxxxxxx --dialStatus=CANCEL --parlato=5
=cut