while($line=<>)
{
chomp($line);
        my $word1,$word;
        $line=~/([0-9]*)\t(.*)/;
        $num=$1;
        $word=$2;

if($word=~/Zaè/) {
        $word=~s/Zaè/Z/g;
        }

 if($word=~/nx/) {
        $word=~s/([A-z]*)nx([A-z]*)/$1Mx$2/g;
        }
 
if($word=~/nisahAya/) {
        $word=~s/nisahAya/nissahAya/g;
        }

if($word=~/muJa/) {
        $word=~s/muJa/mere/g;
        }

#if($word=~/OY/) {
#        $word=~s/OY/A/g;
#        }
        #if($word1 ne "") {
        #print "1\t$word1\n";
        #}
if($word=~/dZ/) {
        $word=~s/dZ/d/g;
        }

if($word=~/DZ/) {
        $word=~s/DZ/D/g;
        }

if($word=~/AMKe/) {
        $word=~s/AMKe/AzKe/g;
        }


  
if($word=~/([A-z]+)\.\./) {
        $word=~/([A-z]+)\.(.*)\.\t/;
        $word=$1."\tunk";
        $word1="\.".$2."\.";
        }

if($word=~/([A-z]+)(\.\.\.)+/) {
        $word=~s/([A-z]+)(\.\.\.)/$1 $2/g;
        }


if($word=~/([0-9]+)veM/) {
        $word=~/([0-9]+)veM/g;
        $word=$1."\tunk";
        $word1="veM";      
	}

if($word=~/([0-9]+)vIM/) {
        $word=~/([0-9]+)vIM/g;
        $word=$1."\tunk";
        $word1="vIM";      
	}

if($word=~/([0-9]+)vAM/) {
        $word=~/([0-9]+)vAM/g;
        $word=$1."\tunk";
        $word1="vAM";      
	}

if($word=~/([A-z]+ne)vAlA/) {
#        $word=~s/([A-z]+ne)vAlA/$1 vAlA/g;
        $word=~/([A-z]+ne)vAlA/g;
        $word=$1."\tunk";
        $word1="vAlA";      
        }

if($word=~/([A-z]+ne)vAle/) {
      # $word=~s/([A-z]+ne)vAle/g;
        $word=~/([A-z]+ne)vAle/g;
        $word=$1."\tunk";
        $word1="vAle";      
        }

if($word=~/([A-z]+ne)vAlI/) {
    #    $word=~s/([A-z]+ne)vAlI/$1 vAlI/g;
        $word=~/([A-z]+ne)vAlI/g;
        $word=$1."\tunk";
        $word1="vAlI";      
        }

if($word=~/([A-z]+ne)vAloM/) {
#        $word=~s/([A-z]+ne)vAloM/$1 vAloM/g;
	$word=~/([A-z]+ne)vAloM/g;
	$word=$1."\tunk";
	$word1="vAloM";      
}
if($word=~/([0-9]+)([A-z]+)/) {
	$word=~/\t([0-9]+)([A-z]+)/g;
	$word=$1."\tunk";
	$word1=$2;      
}

print "1\t$word\n";
if($word1 ne ""){
	print "1\t$word1\tunk\n";

	}
}
