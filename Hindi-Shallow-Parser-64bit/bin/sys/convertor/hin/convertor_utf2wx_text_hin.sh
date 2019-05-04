perl $SHALLOW_PARSER_HIN/bin/sys/convertor/hin/printinput.pl $1 > /tmp/convertorinput$$.tmp

perl $SHALLOW_PARSER_HIN/bin/sys/convertor/hin/convertor_indic.pl -f=text -l=hin -s=utf -t=wx -i=/tmp/convertorinput$$.tmp

rm -fr /tmp/convertorinput$$.tmp
