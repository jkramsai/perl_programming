#!/usr/bin/perl
#
# @File sample.pl
# @Author ramjkrishnamurthappa
# @Created Feb 18, 2017 10:29:16 PM
#

use strict;
use warnings;
use diagnostics;

use File::Spec::Functions qw(catfile);

if (@ARGV != 1) {
   print "\nUsage: $0 <input directory>\n";
   exit;
}

my ($dir_path) = @ARGV;
print "$dir_path \n";

# concatenate directory and any xml file in same folder
my $xml_pattern = catfile($dir_path, '*.xml');

while ( my $xml_file = glob($xml_pattern) ) {
   print "Absolute path is $xml_file\n";
}