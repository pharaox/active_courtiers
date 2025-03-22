#!/usr/bin/env bash

# Marriage events
echo "accou_marriage.0001 event option a: $(grep -a "accou_marriage.0001 event option a" debug.log | wc -l)"
echo "- success: $(grep -a "accou_marriage.0001 event option a success" debug.log | wc -l)"
echo "- failure: $(grep -a "accou_marriage.0001 event option a failure" debug.log | wc -l)"
#echo "  - no courtier: $(pcre2grep -a "accou_marriage.0001 event option a failure, courtier:  \(4294967295\)" debug.log | wc -l)"
#echo "  - no candidate: $(pcre2grep -a "accou_marriage.0001 event option a failure, courtier: .+ \([\d]+\), candidate:  \(4294967295\)" debug.log | wc -l)"
echo "- failure fp: $(pcre2grep -a "accou_marriage.0001 event option a failure, courtier: .+ \([\d]+\), candidate: .+ \([\d]+\), matchmaker: .+ \([\d]+\)" debug.log | wc -l)"
echo
echo "accou_marriage.0002 event option a: $(grep -a "accou_marriage.0002 event option a" debug.log | wc -l)"
echo "- outsider: $(grep -a "accou_marriage.0002 event option a, .*, outsider: yes" debug.log | wc -l)"
echo "- insider: $(grep -a "accou_marriage.0002 event option a, .*, outsider: no" debug.log | wc -l)"
echo "accou_marriage.0002 event option b: $(grep -a "accou_marriage.0002 event option b" debug.log | wc -l)"
echo "- outsider: $(grep -a "accou_marriage.0002 event option b, .*, outsider: yes" debug.log | wc -l)"
echo "- insider: $(grep -a "accou_marriage.0002 event option b, .*, outsider: no" debug.log | wc -l)"
pcre2grep -a -o1 "accou_marriage.0002 event .* candidate quality: ([\d]+)" debug.log | awk '{s+=$1}END{print "average marriage candidate quality:",s/NR}' RS="\n"
echo

# Invite events
echo "accou_invite.0001 event option a: $(grep -a "accou_invite.0001 event option a" debug.log | wc -l)"
echo "- success: $(grep -a "accou_invite.0001 event option a success" debug.log | wc -l)"
echo "- failure: $(grep -a "accou_invite.0001 event option a failure" debug.log | wc -l)"
#echo "  - no candidate: $(pcre2grep -a "accou_invite.0001 event option a failure, candidate:  \(4294967295\)" debug.log | wc -l)"
#echo "  - no courtier: $(pcre2grep -a "invite.0001 event option a failure, candidate: .+ \([\d]+\), courtier:  \(4294967295\)" debug.log | wc -l)"
echo "- failure fp: $(pcre2grep -a "accou_invite.0001 event option a failure, candidate: .+ \([\d]+\), courtier: .+ \([\d]+\)" debug.log | wc -l)"
echo
echo "accou_invite.0002 event option a: $(grep -a "accou_invite.0002 event option a" debug.log | wc -l)"
echo "accou_invite.0002 event option b: $(grep -a "accou_invite.0002 event option b" debug.log | wc -l)"
pcre2grep -a -o1 "accou_invite.0002 event .* candidate quality: ([\d]+)" debug.log | awk '{s+=$1}END{print "average invite candidate quality:",s/NR}' RS="\n"
echo

# Guardian events
echo "accou_guardian.0001 event option a: $(grep -a "accou_guardian.0001 event option a" debug.log | wc -l)"
echo "- success: $(grep -a "accou_guardian.0001 event option a success" debug.log | wc -l)"
echo "- failure: $(grep -a "accou_guardian.0001 event option a failure" debug.log | wc -l)"
#echo "  - no candidate: $(pcre2grep -a "accou_guardian.0001 event option a failure, child: .+ \([\d]+\), candidate:  \(4294967295\)" debug.log | wc -l)"
#echo "  - no courtier: $(pcre2grep -a "accou_guardian.0001 event option a failure, child: .+ \([\d]+\), candidate: .+ \([\d]+\), courtier:  \(4294967295\)" debug.log | wc -l)"
echo "- failure fp: $(pcre2grep -a "accou_guardian.0001 event option a failure, child: .+ \([\d]+\), candidate: .+ \([\d]+\), courtier: .+ \([\d]+\)" debug.log | wc -l)"
echo
echo "accou_guardian.0002 event option a: $(grep -a "accou_guardian.0002 event option a" debug.log | wc -l)"
echo "- education focus: $(grep -a "accou_guardian.0002 event option a, .*, education focus: .* Education" debug.log | wc -l)"
echo "accou_guardian.0002 event option b: $(grep -a "accou_guardian.0002 event option b" debug.log | wc -l)"
pcre2grep -a -o1 "accou_guardian.0002 event .* candidate quality: ([\d]+)" debug.log | awk '{s+=$1}END{print "average guardian candidate quality:",s/NR}' RS="\n"
echo

# Courtier events
echo "accou_courtier.0001 event option a: $(grep -a "accou_courtier.0001 event option a" debug.log | wc -l)"
echo "- success: $(grep -a "accou_courtier.0001 event option a success" debug.log | wc -l)"
echo "- failure: $(grep -a "accou_courtier.0001 event option a failure" debug.log | wc -l)"
echo
echo "accou_courtier.0002 event option a: $(grep -a "accou_courtier.0002 event option a" debug.log | wc -l)"
echo "- success: $(grep -a "accou_courtier.0002 event option a success" debug.log | wc -l)"
echo "- failure: $(grep -a "accou_courtier.0002 event option a failure" debug.log | wc -l)"
echo
echo "accou_courtier.0003 event option a: $(grep -a "accou_courtier.0003 event option a" debug.log | wc -l)"
echo "---"
echo "- chancellor: $(grep -a "accou_courtier.0003 event option a, .*, position: Chancellor" debug.log | wc -l)"
echo "- marshal: $(grep -a "accou_courtier.0003 event option a, .*, position: Marshal" debug.log | wc -l)"
echo "- steward: $(grep -a "accou_courtier.0003 event option a, .*, position: Steward" debug.log | wc -l)"
echo "- spymaster: $(grep -a "accou_courtier.0003 event option a, .*, position: Spymaster" debug.log | wc -l)"
echo "- court_chaplain: $(grep -a "accou_courtier.0003 event option a, .*, position: court_chaplain" debug.log | wc -l)"
echo "---"
echo "- court_physician: $(grep -a "accou_courtier.0003 event option a, .*, position: .*court_physician" debug.log | wc -l)"
echo "- charioteer: $(grep -a "accou_courtier.0003 event option a, .*, position: .*charioteer" debug.log | wc -l)"
echo "- bookmaker: $(grep -a "accou_courtier.0003 event option a, .*, position: .*bookmaker" debug.log | wc -l)"
echo "- akolouthos: $(grep -a "accou_courtier.0003 event option a, .*, position: .*akolouthos" debug.log | wc -l)"
echo "- cultural_emissary: $(grep -a "accou_courtier.0003 event option a, .*, position: cultural_emissary" debug.log | wc -l)"
echo "- keeper_of_swans: $(grep -a "accou_courtier.0003 event option a, .*, position: keeper_of_swans" debug.log | wc -l)"
echo "- chief_qadi: $(grep -a "accou_courtier.0003 event option a, .*, position: chief_qadi" debug.log | wc -l)"
echo "- garuda: $(grep -a "accou_courtier.0003 event option a, .*, position: garuda" debug.log | wc -l)"
echo "- court_gardener: $(grep -a "accou_courtier.0003 event option a, .*, position: court_gardener" debug.log | wc -l)"
echo "- lady_in_waiting: $(grep -a "accou_courtier.0003 event option a, .*, position: lady_in_waiting" debug.log | wc -l)"
echo "- antiquarian: $(grep -a "accou_courtier.0003 event option a, .*, position: antiquarian" debug.log | wc -l)"
echo "- travel_leader: $(grep -a "accou_courtier.0003 event option a, .*, position: travel_leader" debug.log | wc -l)"
echo "- wet_nurse: $(grep -a "accou_courtier.0003 event option a, .*, position: wet_nurse" debug.log | wc -l)"
echo "- court_tutor: $(grep -a "accou_courtier.0003 event option a, .*, position: court_tutor" debug.log | wc -l)"
echo "- food_taster: $(grep -a "accou_courtier.0003 event option a, .*, position: food_taster" debug.log | wc -l)"
echo "- master_of_horse: $(grep -a "accou_courtier.0003 event option a, .*, position: master_of_horse" debug.log | wc -l)"
echo "- master_of_hunt: $(grep -a "accou_courtier.0003 event option a, .*, position: master_of_hunt" debug.log | wc -l)"
echo "- royal_architect: $(grep -a "accou_courtier.0003 event option a, .*, position: royal_architect" debug.log | wc -l)"
echo "- high_almoner: $(grep -a "accou_courtier.0003 event option a, .*, position: high_almoner" debug.log | wc -l)"
echo "- seneschal: $(grep -a "accou_courtier.0003 event option a, .*, position: seneschal" debug.log | wc -l)"
echo "- cupbearer: $(grep -a "accou_courtier.0003 event option a, .*, position: cupbearer" debug.log | wc -l)"
echo "- chief_eunuch: $(grep -a "accou_courtier.0003 event option a, .*, position: chief_eunuch" debug.log | wc -l)"
echo "- court_jester: $(grep -a "accou_courtier.0003 event option a, .*, position: court_jester" debug.log | wc -l)"
echo "- court_poet: $(grep -a "accou_courtier.0003 event option a, .*, position: court_poet" debug.log | wc -l)"
echo "- court_musician: $(grep -a "accou_courtier.0003 event option a, .*, position: court_musician" debug.log | wc -l)"
echo "- bodyguard: $(grep -a "accou_courtier.0003 event option a, .*, position: bodyguard" debug.log | wc -l)"
echo "- champion: $(grep -a "accou_courtier.0003 event option a, .*, position: champion" debug.log | wc -l)"
echo "- executioner: $(grep -a "accou_courtier.0003 event option a, .*, position: executioner" debug.log | wc -l)"
echo "- court_artificer: $(grep -a "accou_courtier.0003 event option a, .*, position: court_artificer" debug.log | wc -l)"
echo "- cave_hermit: $(grep -a "accou_courtier.0003 event option a, .*, position: cave_hermit" debug.log | wc -l)"
echo "- master_assassin: $(grep -a "accou_courtier.0003 event option a, .*, position: master_assassin" debug.log | wc -l)"
echo "- court_scholar: $(grep -a "accou_courtier.0003 event option a, .*, position: court_scholar" debug.log | wc -l)"
echo "- chronicler: $(grep -a "accou_courtier.0003 event option a, .*, position: chronicler" debug.log | wc -l)"
echo "- court_brewmaster: $(grep -a "accou_courtier.0003 event option a, .*, position: court_brewmaster" debug.log | wc -l)"
echo "- eparch: $(grep -a "accou_courtier.0003 event option a, .*, position: eparch" debug.log | wc -l)"
echo "---"
echo "accou_courtier.0003 event option b: $(grep -a "accou_courtier.0003 event option b" debug.log | wc -l)"
echo

# Match rates
# echo "quick_marriage_ai_accept_modifier: $(grep -a "quick_marriage_ai_accept_modifier" debug.log | wc -l)"
# echo "- ok: $(grep -a "quick_marriage_ai_accept_modifier ok" debug.log | wc -l)"
# echo "- false positive: $(grep -a "quick_marriage_ai_accept_modifier false positive" debug.log | wc -l)"
# echo "- false negative: $(grep -a "quick_marriage_ai_accept_modifier false negative" debug.log | wc -l)"
# echo
# echo "quick_invite_ai_accept_modifier: $(grep -a "quick_invite_ai_accept_modifier" debug.log | wc -l)"
# echo "- ok: $(grep -a "quick_invite_ai_accept_modifier ok" debug.log | wc -l)"
# echo "- false positive: $(grep -a "quick_invite_ai_accept_modifier false positive" debug.log | wc -l)"
# echo "- false negative: $(grep -a "quick_invite_ai_accept_modifier false negative" debug.log | wc -l)"
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
