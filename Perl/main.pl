# Basic data mining
# Created by Nicolò Cantori on 30/04/22.

use strict;
use warnings;

sub main
{
  my $file = 'c:\temp\GDB13_Subset-ABCDEFGH.smi'; # Source folder
  my $total = 0;
  my $found = 0;
  my $inputStr;
  
  print "What do you want to look for in the file? : ";
  $inputStr = <STDIN>;
  
  # Remove newline char from the input
  chomp $inputStr;
  
  open(FH, $file) or die("File $file not found");
  
  while(my $String = <FH>)
  {
    $total++;
    if($String =~ $inputStr)
    {
      print "$String \n";
      $found++;
    }
  }
  close(FH);
  
  if($found == 0)
  {
    print "$inputStr not found.";
  }
  else
  {
    print "*******************  END  *******************\n";
    print "Total: $total\n";
    print "Found: $found\n";
  }
}
main();
