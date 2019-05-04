perl $SHALLOW_PARSER_HIN/bin/sl/morph/hin/deletesentencetag.pl $1 | perl $SHALLOW_PARSER_HIN/bin/sl/morph/hin/remove_ssf.pl | perl $SHALLOW_PARSER_HIN/bin/sl/morph/hin/normalizer.pl | perl $SHALLOW_PARSER_HIN/bin/sl/morph/hin/spellvariation.pl > /tmp/morph_input
$SHALLOW_PARSER_HIN/bin/sl/morph/hin/morph_hin.exe --logfilepath morph.log --pdgmfilepath $SHALLOW_PARSER_HIN/data_bin/sl/morph/hin/ --uwordpath $SHALLOW_PARSER_HIN/data_bin/sl/morph/hin/dict_final --dictfilepath $SHALLOW_PARSER_HIN/data_bin/sl/morph/hin/dict/  -ULDWH --inputfile /tmp/morph_input --outputfile /tmp/morph_output
perl $SHALLOW_PARSER_HIN/bin/sl/morph/hin/addsentencetag.pl /tmp/morph_output

rm -fr /tmp/morph_input /tmp/morph_output

