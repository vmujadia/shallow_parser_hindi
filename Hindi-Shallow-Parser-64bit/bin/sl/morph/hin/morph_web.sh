perl /var/www/html/sampark/system/hin_pan/sampark/bin/sys/common/deletesentencetag.pl $1 | perl /var/www/html/sampark/system/hin_pan/sampark/bin/sys/common/remove_ssf.pl | perl /var/www/html/sampark/system/hin_pan/sampark/bin/sl/morph/hin/normalizer.pl | perl /var/www/html/sampark/system/hin_pan/sampark/bin/sl/morph/hin/spellvariation.pl >morph_input
/var/www/html/sampark/system/hin_pan/sampark/bin/sl/morph/hin/morph_hin.exe --logfilepath morph.log --pdgmfilepath /var/www/html/sampark/system/hin_pan/sampark/data_bin/sl/morph/hin/ --uwordpath /var/www/html/sampark/system/hin_pan/sampark/data_bin/sl/morph/hin/dict_final --dictfilepath /var/www/html/sampark/system/hin_pan/sampark/data_bin/sl/morph/hin/dict/  -ULDWH --inputfile morph_input --outputfile morph_output
perl /var/www/html/sampark/system/hin_pan/sampark/bin/sys/common/addsentencetag.pl morph_output

