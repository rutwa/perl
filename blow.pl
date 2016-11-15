#!/usr/bin/perl

use Crypt::CBC;

print "Enter 1 for Blowfish Encryption \n Enter 2 for Twofish Encryption\n";
my $in = <>;
print "Enter the path of teh file to be encrypted";
my $k=<>;
if($in == 1){
    $cipher = Crypt::CBC->new( -key    => 'my secret key',
                         -cipher => 'Blowfish',
                         -header => 'none',
                         -iv => 'mamtatrt'
);


$cipher->start('encrypting');

$sourcefile=k;
print $sourcefile
open(OUTF, ">$sourcefile.perl.crypt") || die;
open(F,$k);
print "\nEncrypting ... \n";
  while (read(F,$buffer,1024)) {
     
      print "\nThe plain text is\n ";
      print $buffer;
      print " \n The encrypted text is ";
      print $cipher->crypt($buffer);
      print OUTF $cipher->crypt($buffer);
      
     
  }
  
  print OUTF $cipher->finish;

close(OUTF);



print "\n\nDecrypting....... \n";
$cipher2 = Crypt::CBC->new( -key    => 'my secret key',
                         -cipher => 'Blowfish',
                         -header => 'none',
                         -iv => 'mamtatrt'
);

open(OUTF, ">$sourcefile.perl.decrypt") || die;
open(F,"$sourcefile.perl.crypt");
  while (read(F,$buffer,1024)) {
      open(F,$k);
       while (read(F,$buffer,1024)) {
      print "\nThe decrypted is\n ";
      print $buffer;
  }
     print
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

$sourcefile=k;

open(OUTF, ">$sourcefile.perl.crypt") || die;
open(F,$k);

print "\nEncrypting ... ";
  while (read(F,$buffer,1024)) {
      print "\nThe plain text is\n ";
      print $buffer;
      print " \n The encrypted text is ";
      print $cipher->crypt($buffer);
      print OUTF $cipher->crypt($buffer);
      
     
  }
  print OUTF $cipher->finish;

close(OUTF);



print "\n Decrypting..... \n";
$cipher2 = Crypt::CBC->new( -key    => 'my secret key',
                         -cipher => 'Twofish',
                         -header => 'none',
                         -iv => 'mamtatrtrutwasha'
);

open(OUTF, ">$sourcefile.perl.decrypt") || die;
open(F,"$sourcefile.perl.crypt");
  while (read(F,$buffer,1024)) {
    
      open(F,$k);
       while (read(F,$buffer,1024)) {
      print "\nThe decrypted is\n ";
      print $buffer;
  }
      print OUTF $cipher2->decrypt($buffer);
     
     
  }
  print OUTF $cipher2->finish;
  print "\n"
close(OUTF);
    }
    
    elsif($in == 3){
       
        print "Enter 1 for Blowfish Description \n Enter 2 for Twofish Description\n";
        my $i = <>;
        if($i==1)
        {
         open (BLOWFISH, "blowfish.txt");

         while ($line = <BLOWFISH>)
          {
               print $line;
          }

           close(BLOWFISH);
        }
        elsif($i==2)
        {
         open (TWOFISH, "twofish.txt");

         while ($line = <TWOFISH>)
          {
               print $line;
          }

           close(TWOFISH);
        }
        
    }
else{
    print "Invalid Input";
    }
