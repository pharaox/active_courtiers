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

