#!user/bin/perl

use Data::Dumper;

# scalar dumper
my $y = 43;
print Dumper(\$y);

# array dumper
my @arr = (1,2,3,4,5,99,6,7,8,9);
print Dumper(\@arr);

# hashes dumper
# using terse to remove default variable name
$Data::Dumper::Terse=1;
$Data::Dumper::Sortkeys=1;
my %hash = (1=>"one",2=>"two",30=>"three");
print Dumper(\%hash,\@arr);

# nested hashes dumper
# indent is used tell us that wht should be repn indentation
$Data::Dumper::Indent=0;
# Purity is used to convert original form
$Data::Dumper::Purity=1;
my %hash1 = (
    name=>{
        fname=>"Sanjai",
        lname=>"S"
    },
    addess=>{
        add1=>"tamil nadu",
        pin=>570022
    },
    color=>"blue",
    gender=>"male"
);
print Dumper(\%hash1);


