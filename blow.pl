#!/usr/bin/perl

use Crypt::CBC;

print "Enter 1 for Blowfish Encryption \n Enter 2 for Twofish Encryption\n";
my $in = <>;
if($in == 1){
    $cipher = Crypt::CBC->new( -key    => 'my secret key',
                         -cipher => 'Blowfish',
                         -header => 'none',
                         -iv => 'mamtatrt'
);


$cipher->start('encrypting');

$sourcefile="S.txt";

open(OUTF, ">$sourcefile.perl.crypt") || die;
open(F,"S.txt");
print "? Encrypting ... \n";
  while (read(F,$buffer,1024)) {
      print OUTF $cipher->crypt($buffer);
  }
  print OUTF $cipher->finish;

close(OUTF);



print "? Decrypting.,..... \n";
$cipher2 = Crypt::CBC->new( -key    => 'my secret key',
                         -cipher => 'Blowfish',
                         -header => 'none',
                         -iv => 'mamtatrt'
);

open(OUTF, ">$sourcefile.perl.decrypt") || die;
open(F,"S.txt.perl.crypt");
  while (read(F,$buffer,1024)) {
      print OUTF $cipher2->decrypt($buffer);
  }
  print OUTF $cipher2->finish;

close(OUTF);
    }
elsif($in == 2){
    use Crypt::CBC;

$cipher = Crypt::CBC->new( -key    => 'my secret key',
                         -cipher => 'Twofish',
                         -header => 'none',
                         -iv => 'mamtatrtrutwasha'
);


$cipher->start('encrypting');

$sourcefile="SRCF.txt";

open(OUTF, ">$sourcefile.perl.crypt") || die;
open(F,"SRCF.txt");
print "? Encrypting ... \n";
  while (read(F,$buffer,1024)) {
      print OUTF $cipher->crypt($buffer);
  }
  print OUTF $cipher->finish;

close(OUTF);



print "? Decrypting.,..... \n";
$cipher2 = Crypt::CBC->new( -key    => 'my secret key',
                         -cipher => 'Twofish',
                         -header => 'none',
                         -iv => 'mamtatrtrutwasha'
);

open(OUTF, ">$sourcefile.perl.decrypt") || die;
open(F,"SRCF.txt.perl.crypt");
  while (read(F,$buffer,1024)) {
      print OUTF $cipher2->decrypt($buffer);
  }
  print OUTF $cipher2->finish;

close(OUTF);
    }
else{
    print "Invalid Input";
    }
