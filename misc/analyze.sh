#!/usr/bin/env bash

# Marriage events
echo "accou_marriage.0001 event option a: $(grep -a "accou_marriage.0001 event option a" debug.log | wc -l)"
echo "- success: $(grep -a "accou_marriage.0001 event option a success" debug.log | wc -l)"
echo "- failure: $(grep -a "accou_marriage.0001 event option a failure" debug.log | wc -l)"
echo "- failure fp: $(pcre2grep -a "accou_marriage.0001 event option a failure, courtier: .+ \([\d]+\), candidate: .+ \([\d]+\), matchmaker: .+ \([\d]+\)" debug.log | wc -l)"
echo
echo "accou_marriage.0002 event option a: $(grep -a "accou_marriage.0002 event option a" debug.log | wc -l)"
echo "- outsider: $(grep -a "accou_marriage.0002 event option a, .*, outsider: yes" debug.log | wc -l)"
echo "- insider: $(grep -a "accou_marriage.0002 event option a, .*, outsider: no" debug.log | wc -l)"
echo "accou_marriage.0002 event option b: $(grep -a "accou_marriage.0002 event option b" debug.log | wc -l)"
echo "- outsider: $(grep -a "accou_marriage.0002 event option b, .*, outsider: yes" debug.log | wc -l)"
echo "- insider: $(grep -a "accou_marriage.0002 event option b, .*, outsider: no" debug.log | wc -l)"
pcre2grep -a -o1 "candidate quality: ([\d]+)" debug.log | awk '{s+=$1}END{print "average candidate quality:",s/NR}' RS="\n"
echo
echo "accou_courtier.0001 event option a: $(grep -a "accou_courtier.0001 event option a" debug.log | wc -l)"
echo "- success: $(grep -a "accou_courtier.0001 event option a success" debug.log | wc -l)"
echo "- failure: $(grep -a "accou_courtier.0001 event option a failure" debug.log | wc -l)"
echo
echo "accou_courtier.0002 event option a: $(grep -a "accou_courtier.0002 event option a" debug.log | wc -l)"
echo "- chancellor: $(grep -a "accou_courtier.0002 event option a, .*, councillor: Chancellor" debug.log | wc -l)"
echo "- marshal: $(grep -a "accou_courtier.0002 event option a, .*, councillor: Marshal" debug.log | wc -l)"
echo "- steward: $(grep -a "accou_courtier.0002 event option a, .*, councillor: Steward" debug.log | wc -l)"
echo "- spymaster: $(grep -a "accou_courtier.0002 event option a, .*, councillor: Spymaster" debug.log | wc -l)"
echo "- court chaplain: $(grep -a "accou_courtier.0002 event option a, .*, councillor: court_chaplain" debug.log | wc -l)"
echo "accou_courtier.0002 event option b: $(grep -a "accou_courtier.0002 event option b" debug.log | wc -l)"
echo
# echo "quick_marriage_ai_accept_modifier: $(grep -a "quick_marriage_ai_accept_modifier" debug.log | wc -l)"
# echo "- ok: $(grep -a "quick_marriage_ai_accept_modifier ok" debug.log | wc -l)"
# echo "- false positive: $(grep -a "quick_marriage_ai_accept_modifier false positive" debug.log | wc -l)"
# echo "- false negative: $(grep -a "quick_marriage_ai_accept_modifier false negative" debug.log | wc -l)"
# echo

# echo "Statistics"
# echo "Year,Rul,Cou,Adu,Mar,SoS,GCV,Ch,ChS,St,StS,Ma,MaS,Sp,SpS,CC,CCS,CP,CPA,An,AnA,TL,TLA,CT,CTA,Mh,MhA,Se,SeA,Kn,KnS"
# pcre2grep -a -o1 -o2 --om-separator=',' "([\d]+): Statistics \(all\): ([\d\.\,\-]+)" debug.log
# echo "Counts"
# echo "Year,Rul,Cou,Adu,Mar,SoS,GCV,Ch,ChS,St,StS,Ma,MaS,Sp,SpS,CC,CCS,CP,CPA,An,AnA,TL,TLA,CT,CTA,Mh,MhA,Se,SeA,Kn,KnS"
# pcre2grep -a -o1 -o2 --om-separator=',' "([\d]+): Statistics \(counts\): ([\d\.\,\-]+)" debug.log
# echo "Dukes"
# echo "Year,Rul,Cou,Adu,Mar,SoS,GCV,Ch,ChS,St,StS,Ma,MaS,Sp,SpS,CC,CCS,CP,CPA,An,AnA,TL,TLA,CT,CTA,Mh,MhA,Se,SeA,Kn,KnS"
# pcre2grep -a -o1 -o2 --om-separator=',' "([\d]+): Statistics \(dukes\): ([\d\.\,\-]+)" debug.log
# echo "Kings"
# echo "Year,Rul,Cou,Adu,Mar,SoS,GCV,Ch,ChS,St,StS,Ma,MaS,Sp,SpS,CC,CCS,CP,CPA,An,AnA,TL,TLA,CT,CTA,Mh,MhA,Se,SeA,Kn,KnS"
# pcre2grep -a -o1 -o2 --om-separator=',' "([\d]+): Statistics \(kings\): ([\d\.\,\-]+)" debug.log
# echo
