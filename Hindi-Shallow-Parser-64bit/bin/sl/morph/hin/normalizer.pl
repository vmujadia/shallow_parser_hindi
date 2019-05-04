# this program is use as pre-processing module before tokenizer

binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");

while($line=<>)
{
	
	utf8::decode($line);
        
	$line =~ s/\x{2018}/'/g; # <2018> ‘ is Replaced by single quote "'"
	$line=~s/\x{2019}/'/g; # <2019> ’ is Replaced by single quote "'"
	$line=~s/\x{201C}/"/g; # <201C> “ is Replaced by single quote "
	$line=~s/\x{201D}/"/g; # <201D> ” is Replaced by single quote "
        
	$line=~s/\x{200D}//g; # <200D> is Removed
	$line=~s/\x{200C}//g; # <200C> is Removed
	$line=~s/\x{feff}//g; # <feff> is Removed
	$line=~s/\x{0D}//g; #  is Removed

	print $line;
}
