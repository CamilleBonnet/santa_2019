class Main
  DAY1 = %w(
    62371 94458 78824 57296 84226 133256 101771 61857 120186 132234 50964 97800 81275 109561 145666 134029 81625 61963 83820 104210 62264 146376 91889 116069 54596 132877 70341 89983 84627 51617 84846 114416 132268 136516 104082 133669 86585 96389 111737 51954 132971 84097 66260 133883 84720 51985 61024 55912 125334 69541 58806 56014 62563 80799 67284 93971 147238 114830 61376 65096 73498 54792 88590 63225 129226 67872 55563 110467 91120 100281 148236 121886 75671 124736 90588 52175 140673 71029 73865 142021 140326 77894 61245 96492 136329 132967 83975 53082 56784 50024 131154 138517 130787 103334 104287 140644 148945 58945 62153 93488
  )

  DAY2 = %w(
    1 12 2 3 1 1 2 3 1 3 4 3 1 5 0 3 2 13 1 19 1 19 10 23 1 23 13 27 1 6 27 31 1 9 31 35 2 10 35 39 1 39 6 43 1 6 43 47 2 13 47 51 1 51 6 55 2 6 55 59 2 59 6 63 2 63 13 67 1 5 67 71 2 9 71 75 1 5 75 79 1 5 79 83 1 83 6 87 1 87 6 91 1 91 5 95 2 10 95 99 1 5 99 103 1 10 103 107 1 107 9 111 2 111 10 115 1 115 9 119 1 13 119 123 1 123 9 127 1 5 127 131 2 13 131 135 1 9 135 139 1 2 139 143 1 13 143 0 99 2 0 14 0
  ).map(&:to_i)

  sub_path_1 = %w(R1001 D890 R317 U322 L481 D597 L997 U390 L78 D287 L401 U638 R493 D493 R237 U29 R333 D466 L189 D634 R976 U934 R597 U62 L800 U229 R625 D927 L629 D334 L727 U4 R716 U20 L284 U655 R486 U883 R194 U49 L845 D960 R304 D811 L38 U114 R477 D318 L308 U445 L26 D44 R750 D12 R85 D146 R353 U715 R294 D595 L954 U267 L927 U383 L392 D866 L195 U487 L959 U630 R528 D482 R932 D541 L658 D171 L964 U687 R118 U53 L81 D381 R592 U238 L391 U399 R444 U921 R706 U925 R204 D220 L595 U489 R621 D15 R104 D567 L664 D54 R683 U654 R441 D748 L212 D147 L699 U296 L842 U230 L684 D470 R247 D421 R38 D757 L985 U791 R112 U494 R929 D726 L522 U381 R184 D492 L517 D819 R487 D620 R292 D206 R254 D175 L16 U924 R838 D423 R756 D720 L555 U449 L952 D610 L427 U391 R520 D957 R349 D670 L678 U467 R804 U757 L342 U808 R261 D597 L949 U162 R3 D712 L799 U531 R879 D355 R325 D173 L303 U679 L432 D421 R613 U431 L207 D669 R828 D685 R808 U494 R821 U195 L538 U16 L835 D442 L77 U309 L490 U918 L6 D200 L412 D272 L416 U774 L75 D23 L193 D574 R807 D382 L314 D885 R212 D806 L183 U345 L932 U58 L37 U471 R345 U678 R283 U644 L559 U892 L26 D358 L652 D606 L251 U791 L980 D718 L14 D367 R997 D812 R504 D474 L531 U708 R660 U253 L86 D491 R971 U608 L166 U659 R167 U92 L600 U20 R28 U852 R972 D409 L719 D634 R787 D796 L546 D857 L987 U111 L916 D108 R537 U931 R308 U385 L258 D171 R797 U641 R798 D723 R600 D710 R436 U587 R16 D564 L14 D651 R709 D587 R626 U270 R802 U937 R31 U518 L187 D738 R562 D238 R272 D403 R788 D859 L704 D621 L547 D737 L958 U311 L927)
  sub_path_2 = %w(L1007 U199 L531 D379 L313 U768 L87 U879 R659 U307 L551 D964 L725 D393 R239 D454 R664 U402 R100 D62 R53 D503 R918 U998 L843 D142 R561 U461 R723 D915 L217 D126 L673 U171 R131 U518 R298 U99 L852 D799 L159 U161 R569 D802 L391 D553 L839 U954 R502 U351 R851 D11 L243 D774 L642 U613 R376 U867 L357 D887 L184 D298 R406 U912 R900 D348 L779 U494 R240 D712 R849 D684 R475 D449 L94 U630 L770 D426 L304 D869 R740 D377 R435 D719 L815 D211 R391 U484 R350 U599 R57 U210 R95 U500 L947 D649 R615 D404 L953 D468 R380 U215 R82 D872 R150 D347 L700 D450 L90 U803 L593 U296 R408 U667 R407 U725 R197 U269 R115 D758 R558 U62 L519 U308 R259 U869 L846 U3 R592 D357 R633 D909 L826 U165 L190 D821 L525 U404 R63 D214 R265 U74 L715 U461 L840 D647 R782 D655 R72 D601 L435 U549 L108 U687 R836 D975 L972 U813 R258 U703 R90 D438 R434 D818 R184 D886 R271 U31 L506 U395 L274 U455 R699 U889 L162 U771 R752 U317 R267 D959 R473 U58 R552 U51 R637 D726 R713 D530 L209 D824 R275 D207 R357 D373 L169 U880 L636 U409 R67 D740 R225 D272 R114 U970 R51 U230 R859 U820 L979 D153 R16 D883 L542 U806 L523 D752 L712 U55 L739 U746 R910 D873 R108 D558 L54 D619 L444 U941 R613 U478 L839 D910 R426 D614 L622 U928 L65 D644 L208 U971 L939 U874 R827 U672 L620 U140 L493 D637 L767 U831 R874 U468 R648 U714 R294 D606 L375 D962 L105 D919 L486 D771 L827 D196 L408 U217 L960 D633 L850 U805 L188 U566 L884 D212 L677 D204 R257 D409 R309 D783 L773 D588 L302 U129 L550 U919 L482 U563 R290 U690 R586 D460 L771 D63 R451 D591 L861 D598 L432 U818 L182)
  DAY3 = [sub_path_1, sub_path_2]

  DAY5 = [3,225,1,225,6,6,1100,1,238,225,104,0,1101,78,5,225,1,166,139,224,101,-74,224,224,4,224,1002,223,8,223,1001,224,6,224,1,223,224,223,1002,136,18,224,101,-918,224,224,4,224,1002,223,8,223,101,2,224,224,1,224,223,223,1001,83,84,224,1001,224,-139,224,4,224,102,8,223,223,101,3,224,224,1,224,223,223,1102,55,20,225,1101,53,94,225,2,217,87,224,1001,224,-2120,224,4,224,1002,223,8,223,1001,224,1,224,1,224,223,223,102,37,14,224,101,-185,224,224,4,224,1002,223,8,223,1001,224,1,224,1,224,223,223,1101,8,51,225,1102,46,15,225,1102,88,87,224,1001,224,-7656,224,4,224,102,8,223,223,101,7,224,224,1,223,224,223,1101,29,28,225,1101,58,43,224,1001,224,-101,224,4,224,1002,223,8,223,1001,224,6,224,1,224,223,223,1101,93,54,225,101,40,191,224,1001,224,-133,224,4,224,102,8,223,223,101,3,224,224,1,223,224,223,1101,40,79,225,4,223,99,0,0,0,677,0,0,0,0,0,0,0,0,0,0,0,1105,0,99999,1105,227,247,1105,1,99999,1005,227,99999,1005,0,256,1105,1,99999,1106,227,99999,1106,0,265,1105,1,99999,1006,0,99999,1006,227,274,1105,1,99999,1105,1,280,1105,1,99999,1,225,225,225,1101,294,0,0,105,1,0,1105,1,99999,1106,0,300,1105,1,99999,1,225,225,225,1101,314,0,0,106,0,0,1105,1,99999,1008,226,677,224,1002,223,2,223,1005,224,329,1001,223,1,223,1107,226,677,224,1002,223,2,223,1005,224,344,1001,223,1,223,8,677,226,224,1002,223,2,223,1006,224,359,1001,223,1,223,1108,226,677,224,1002,223,2,223,1006,224,374,101,1,223,223,1007,677,677,224,102,2,223,223,1006,224,389,1001,223,1,223,8,226,677,224,102,2,223,223,1006,224,404,101,1,223,223,1007,226,226,224,1002,223,2,223,1006,224,419,101,1,223,223,107,677,226,224,1002,223,2,223,1006,224,434,1001,223,1,223,1007,226,677,224,102,2,223,223,1005,224,449,101,1,223,223,1107,226,226,224,1002,223,2,223,1005,224,464,1001,223,1,223,107,226,226,224,102,2,223,223,1006,224,479,101,1,223,223,108,226,226,224,1002,223,2,223,1006,224,494,101,1,223,223,107,677,677,224,102,2,223,223,1005,224,509,1001,223,1,223,1008,677,677,224,1002,223,2,223,1006,224,524,101,1,223,223,1107,677,226,224,102,2,223,223,1006,224,539,1001,223,1,223,108,677,226,224,102,2,223,223,1006,224,554,1001,223,1,223,1108,677,226,224,102,2,223,223,1005,224,569,1001,223,1,223,8,677,677,224,1002,223,2,223,1005,224,584,1001,223,1,223,7,677,677,224,1002,223,2,223,1005,224,599,101,1,223,223,1108,226,226,224,102,2,223,223,1006,224,614,101,1,223,223,1008,226,226,224,1002,223,2,223,1005,224,629,101,1,223,223,7,677,226,224,102,2,223,223,1006,224,644,1001,223,1,223,7,226,677,224,102,2,223,223,1005,224,659,101,1,223,223,108,677,677,224,1002,223,2,223,1006,224,674,101,1,223,223,4,223,99,226]

  DAY6 = [
    "LH2)LD6","SSV)S13","G9G)LNJ","XN6)BNR","D8D)K4S","7ZK)C14","6VH)FRD","N1T)DPN","2TN)43C","VQ9)YJR","JXH)5BL","FPY)WCM","VFX)PJC","182)1GK","PN1)2KN","K3N)3HR","VBB)4XX","PMC)NW3","P8H)6DB","ZCY)2XH","8HH)WPM","3VL)NTH","C39)NNH","79Z)JZW","Z1V)9RT","PFW)KV5","RG5)9F2","99C)PTG","RNK)GBZ","L1L)TZH","KS5)FFF","PY4)NHN","H9Z)K35","8FX)4NL","HYD)27S","XB3)8TG","PFF)JNG","LRM)7ZK","SH2)MTD","GH8)H7M","D86)Q5V","5RC)RXC","WNM)D6F","7K2)8HM","3P1)9JN","KV5)LVR","N4J)F4L","JRS)ZNS","5BL)MWB","FDJ)BFY","JB5)XQ3","SZ8)J6F","3D1)WW4","TYZ)54J","NJT)NRC","YVK)SCV","TYG)SK3","PLM)P6B","NS5)Z2K","NW3)3P3","NY5)L74","2RR)RG5","RDY)3X6","Q4S)977","TS5)XL4","S6M)1CD","2X8)VDS","2D3)R4G","1YX)PWR","P6B)4DY","PNW)KR4","T3B)XCG","HR8)B4R","R76)JH1","C1G)Z47","CZJ)4H4","663)538","WSX)KCF","NRR)CNN","CK1)BHW","DN1)72S","XLQ)H1S","6ZC)KKY","FRD)NRR","R9J)24N","NSP)8GG","7KD)CSN","FMJ)21F","JNZ)X4P","D7J)MGX","MBF)VQ9","PJG)34G","M5Q)WNM","KYL)RDY","DKT)9CK","XVN)WJM","13W)MHB","MLH)1F7","977)4JW","Z7Y)5CN","XRS)3SN","8ZH)CTW","L4D)RNQ","PDM)NZD","N4N)938","45K)RGS","6NS)8X6","QK9)HMD","2TC)CLN","1S1)W6L","YFJ)KY8","694)W93","KCY)F35","H43)2Y8","WZK)9PD","8H3)31M","3TK)ZWT","77C)PCG","86V)741","X3T)3XQ","L7Y)QFR","PLG)HWR","NRR)XJ4","WW4)ZF3","FVJ)R8F","3K9)F6Z","DPN)Y4V","W6P)KCY","VQ7)4XK","ZKQ)N87","TJN)JSK","LQL)RCB","GG1)D1X","R88)HYP","DRF)LSH","133)G9K","GMG)RGM","SXW)32Y","SHM)JXK","VJV)S3X","2DZ)DZ1","MRL)B52","N7H)B3S","VK6)73M","XTW)6RP","SC7)ZF4","3FK)VFX","4DY)454","8NB)H11","2X9)8FX","X8L)6SS","TJT)ZKD","RHX)M3V","HGH)Z7R","FDZ)PJK","5BM)45K","COM)BM7","YS2)D74","M9H)RHX","Z9M)QK9","H84)F7J","BHW)N7H","32Y)M9H","1QL)XVN","ZWT)7ZC","W3B)Z3W","F4L)6JQ","LVR)N4J","984)LHK","S3X)YWQ","PJK)PT7","TYH)PN1","8CS)694","VPL)FPY","TD2)BJ8","2L5)897","K2B)6FM","KNS)K4Y","KCF)N2T","C2D)9HP","Z7C)HS9","DGR)99W","LHC)5MZ","WKQ)77Y","938)9BX","QZF)DBK","DBK)VXQ","B6P)WKP","TPC)6VH","39W)5WM","HRD)KDR","XM9)82J","HMD)1XM","FBR)R88","1XM)L17","C6D)CST","YJ1)YRM","5YT)1K8","6MW)9C4","WHM)W1X","MHB)17Q","G47)FYT","RG7)BB6","WPM)V8B","P5H)PQ7","Z7T)7JQ","RGM)1GC","KKV)TB9","F88)8JP","93B)TVD","YXH)BF2","CST)4NH","QLQ)TS5","4M8)P96","KN8)KS5","KFG)42Y","F8J)PFG","538)MTT","6X9)81D","8G8)V8F","LYW)B6G","XCG)Q21","SK3)2D3","H1W)VJV","SH5)ZSY","15T)Y5L","7FF)2YJ","Q4F)YXH","CSN)PQS","Z9Z)PLG","98R)65K","G23)Q9B","Z9M)M4T","NKD)Y99","DYW)F2X","PH9)J7V","JNZ)Z5Q","ZNS)YVN","6JQ)GR9","ZX6)FQ5","DJ8)692","2Y8)99C","1PY)QZ8","5BB)2NZ","F6Z)X4W","CPH)VD2","Z1W)4TC","H2Q)1Z7","HD7)5FD","QYB)FVJ","V91)R76","DTF)LH2","W1W)7R1","8CH)9GG","WN5)6P5","1K8)496","FD7)P56","PR1)5V5","JJ8)M5Q","42Y)QGQ","69Q)HV5","WKP)D86","P65)RCZ","2HQ)GWL","KPK)X8L","N2T)L6R","1MX)NJT","6DN)PNW","7QG)GLN","38R)M4L","3SN)XXP","3ZF)RHY","HS9)QXR","2YJ)V91","NNH)HSM","Z23)77C","B52)RNK","3PY)PWY","31M)N4P","RNQ)P8H","S6S)PFF","4H4)NY5","4DG)6YY","2TR)ZKQ","Q21)XLQ","5RC)WYW","6D7)WYC","54J)KFG","RJ7)Z1V","D64)9V7","FFF)V6J","11T)TYG","D9H)8HK","2M8)XYF","PQ7)4DG","NTH)12N","X5R)49J","M86)YVK","9FD)SAN","FDJ)CWN","QFR)PJG","NQT)WSX","KZY)6MQ","Y5L)TTR","K2Z)V55","9F2)LYW","WNT)D94","4QV)TDL","B4G)ZBY","W97)4QV","7R1)1XY","VXX)TN4","1ST)PLM","M6H)QL6","2X8)YC2","3P3)C39","NJH)ZRQ","52F)K2Z","NWC)DGR","HYP)VVH","4XT)2TC","52B)2TR","JXQ)YZ3","MVT)RJ7","GWY)SQG","P1D)8Z8","ZXY)8M5","D74)RPC","9CK)9BJ","K25)NWZ","718)6J5","QS1)YMF","PJT)N1T","Y1C)HXP","NBW)WDP","9TT)K32","VDS)XB3","K4S)Z43","RXC)RR6","9RT)N4N","WFT)RP3","2XH)JNZ","QFC)FBR","342)B4G","3H3)QZS","5FD)3VL","XDC)DXW","X86)T32","6YT)8TP","R8M)ZNR","G7X)W62","MGB)PH9","2NZ)GG1","W4M)NSP","D9K)1G2","VD2)QC3","LMC)N8Q","Z5Q)YJ1","PGP)FPQ","454)6JD","HXP)69Q","FHG)331","SSL)Y1C","FXB)7HQ","M9V)JDB","XLK)5JD","24H)T1L","ZXS)SL4","F2D)LD9","MJR)R8M","38H)W6P","D6F)39G","TQB)V7P","L35)292","MG6)G7X","8M5)HD7","CNN)T3B","KZJ)W97","TCC)6S4","M3Q)TJN","RLX)QZ6","2BW)SST","WYW)HCZ","WYF)5MB","2V5)6X9","GVF)ZJ2","4TC)L6P","CK1)MG6","QWQ)DBC","FLQ)56N","B8T)FNW","6RP)5YQ","N4P)NWC","3P3)4R1","692)K3N","PT7)2VD","HLB)G6M","JX7)HRD","WCM)D7J","XFX)9FD","JDC)DKT","W93)VHD","T44)TDG","ZRG)M6H","YVN)SKJ","YFJ)44H","L79)VW7","YQJ)38H","412)5TR","JZW)11T","RR6)3LM","S13)3H8","MLH)FGV","DZ1)2BW","49J)6Z8","Z11)4R2","C8V)KXH","YC2)3PJ","L6R)BN6","47W)2N6","Q9B)T44","F2X)Y2D","ZW5)SP6","W1X)921","96M)2TN","N59)H2Q","6Z8)3TK","ZKB)GH8","LSH)C81","294)PY4","BML)X5R","QK9)1PY","17Q)V5V","WJT)PDM","SY4)2PG","Z7M)XVH","C8H)NBW","X5H)RQX","SC7)389","Z47)KZY","SKJ)51V","CSX)MVT","QCD)3G5","11V)6YK","KTY)P1D","TB8)8HH","Y9G)DN8","XG3)MBF","KND)WJT","JYH)V34","59K)YWG","4R2)XN6","HV5)X5H","RHL)VP9","DZ1)785","3GS)SNS","GLB)1XC","V2M)8XM","SP6)6TP","BXW)TQL","L6P)N47","H11)HYR","73C)H1W","BSN)663","1XT)KYL","1J9)RN6","331)V2M","CVT)YQJ","F47)L7Y","G8V)TYZ","3GB)3H9","L74)3LJ","73M)5PW","N28)XM9","XYF)JX7","7K7)7D3","6DB)GTK","8PC)2X9","9TJ)BJ4","44H)8G8","NHN)9YR","QYW)93B","RSP)QS1","M7S)15T","6N1)VQ7","P1L)D8D","VWY)K25","NNH)6H9","894)TYH","S3X)D7T","6SS)G1T","9P7)R7B","ZZK)23R","XXP)ZRG","1K8)9TJ","9FS)5VF","7HQ)8P7","J7V)3FK","43C)M9V","HM7)BGX","F7J)MLH","K35)D7X","84W)GBY","4JW)894","G4N)DXF","Q39)45D","C8J)JMF","B7L)7YN","DK3)L1L","3S4)T4H","TN4)QYB","RYX)R74","TDL)Y31","8VR)MB8","11X)SXW","THB)SPV","RP3)Z7Y","RHY)KC6","NSH)453","CP6)7CT","7KF)7KD","5BG)QTW","NPD)SJS","JL1)84Z","1CM)WN5","KXH)G9G","T87)YXK","R7B)3GD","B7P)SH5","6PR)5BM","2VD)T24","BZ5)342","HYM)7PH","MBY)2L5","BZ1)KPM","J6F)B7L","T32)NTG","D4X)1CM","D7P)1YX","8GG)W2K","GPH)B5Z","V6J)DN1","77D)YZB","5JD)84W","JDC)W1H","64J)LTD","XJ4)QN1","T22)6N1","1DV)KZ4","PSB)F9J","77Y)TXB","NXD)M6P","NZD)J28","QTR)52B","3K9)VY4","56N)D9K","3PN)XTK","47W)4Q5","745)11V","THB)B8T","742)6MW","6FM)47Q","ZFK)ZSN","FCB)JJ8","1PH)3RW","SL4)BZ5","72S)9FS","LHK)DYW","7ZC)3PY","6K4)1DV","741)FHG","CGX)9HX","PNQ)RYX","1XR)T8Z","V8F)7JT","DLB)C8H","PJN)L49","HCZ)YN4","Z43)MBY","F44)JP8","81D)L4D","51V)6NS","QZS)LQL","NTG)RZX","Y99)Y8W","GPK)BQ6","1DV)Z1W","C81)S6S","6S4)133","6YY)CNV","73C)FXB","JYH)BSN","QZ6)52Y","61S)38J","4BC)5YT","453)BZ1","5XX)NPD","M4T)18J","JZW)T22","3TY)H6K","JMF)4BC","YN4)BLC","PWY)HGH","PJN)GWY","BGX)DQ5","Y8W)X3T","X72)MGB","82J)C5B","5TR)791","2G9)CRT","4XX)Z7M","MB8)13W","W1H)7FF","6Q7)JFL","RNN)8GK","97G)3CJ","5MZ)HM7","12N)XFX","5X8)2RR","4K6)31D","MTD)Z9Z","VJJ)8VR","QXR)XXF","4R1)QLQ","T8Z)73C","ZVS)W3B","K1R)FLQ","Q5V)FDJ","VY4)Q4S","W6L)8NT","5YQ)CK7","HWR)F2D","LJK)2M8","Y4V)4ZC","5SD)Q4F","95M)CJF","BSQ)CWF","M2R)97G","TVD)XLY","BQ6)M3Q","7D3)79T","ZX6)GPH","ZF3)G47","VP9)VJX","PFF)B5R","PD4)RLX","292)D5V","QL6)9Y8","SCV)TTD","TKD)TJT","2TK)1MX","8HM)JC4","7YN)6K4","Z2K)2TK","M9H)XTW","ZMT)HYD","KRW)9SD","1CK)8PC","KC6)1QL","785)8NY","XL4)N8K","R8F)JDC","8GK)6XR","N2W)VK6","2DZ)KPK","FPQ)6DN","PJC)FD7","CJF)JNM","8NT)RRT","RGS)RNN","8NY)CP6","W2K)KND","WNB)MZD","X86)JP5","R3Z)7TL","8JP)DQR","J28)QFC","DWH)KRW","791)P9N","GLN)Y3S","CTW)8RW","KR7)D7P","V5V)GDH","Q6T)P1W","P9N)X72","MGX)RVW","7JQ)Y3X","TZH)BSQ","K32)BTL","JNG)Y6X","39G)TCC","4LY)DFK","P56)QWQ","N3W)F7T","YPJ)PRQ","L17)X86","DFK)412","44Q)2G9","QNC)2HQ","KKY)M7S","78W)8CS","C14)M2L","DBC)KR7","9JN)CGX","ZSY)2WD","3H9)7S6","XVH)3PN","C95)DTF","7PH)D6J","1XC)6YQ","7JT)JXH","1CD)Z9M","G1T)F88","SDG)SSL","XLB)ZCY","9BJ)WBZ","F88)Z7T","6S2)F47","B4R)5X8","CWF)98R","JXK)PJN","HQY)H84","8TP)742","BFY)JXQ","XTK)ZZK","CLN)V74","WBZ)V8K","JP5)H7T","3PJ)QYW","F7T)RS6","KY8)86W","18J)984","SNS)2DZ","V55)72B","VW7)GVF","T23)4K6","RVW)FMJ","7PX)39W","5TY)BN3","DXF)VPL","9SD)ZVS","CWN)8X3","GDH)MXQ","NRC)J43","HWL)96M","HM7)YPJ","VXQ)6Q7","N47)JCY","THY)PNQ","9V7)3B6","331)PTH","GWL)N28","V8K)N59","23R)NKD","897)R9J","QSV)7PD","SSV)SZ8","PJK)38R","Z6S)ZX6","RQX)N3W","J43)BPG","9Y8)QNC","1LK)F15","SST)8ZH","94K)Z7L","47Q)NSH","PJC)CZ3","X7N)THY","3HR)ZMT","FGV)Z23","YTR)DWH","4LZ)KTY","JSK)99Y","1FM)6YT","TQL)T23","BJP)1FM","KS5)44Q","VJX)K37","QTW)C6D","M6P)65V","YXK)8NB","GR9)6QY","Z7R)6PR","2V5)D4X","5V5)BXW","TB9)B7P","65V)K94","QGQ)VXX","31D)4XT","RZX)QVM","BPG)WZK","8X6)95D","HYR)DK3","9GG)HWF","H7M)9N1","Q6T)DJ8","V8F)92S","P96)LRN","DN8)C8V","SPV)Z18","LTD)DLB","FYT)11X","MRL)NXD","JNM)X7S","H1S)2LH","F8N)N8M","8TG)745","3G5)XDH","5MB)4CG","C8H)PFW","YJR)CSX","7PD)ZFK","GK3)TDF","7R1)1PH","5PW)R7S","7CT)Y9G","MPS)XLK","6D8)CVT","YN4)DRF","PT7)2X8","72B)NHC","7S6)Q6T","6P5)P5H","6TP)L79","BTL)3TY","Y31)XRS","N87)NS5","PFG)YOU","Y2D)273","B5Z)PN6","38J)QCD","4XT)KN8","J25)TQB","4BC)X7N","8X6)VLF","GTK)3GS","2DC)WHM","WV8)3S4","YRM)1ST","XXF)G73","921)7PX","YWG)HWL","2KN)1MZ","389)QSV","6YQ)LRM","R7S)WNT","TTR)SSV","ZRQ)T87","3LJ)YW1","273)C8J","6YK)24H","YZB)JB5","X7S)N2W","PWR)1XT","VLF)294","T22)7K7","Q9B)K2B","RH4)B6P","JP8)6D8","ZNR)8H3","N8M)5SD","KR4)94K","G9K)95M","X4P)S1C","XLY)F8N","DS6)YFJ","CRT)KKV","F6P)M2R","24N)NJH","DQ5)GLB","SQG)MPS","YMF)JM8","BLC)R5B","B3S)9P7","YW1)5PD","YWQ)RSP","6XR)SC7","R3Z)VJJ","3H8)NQT","KDR)6D7","CZ3)M86","B6G)GPK","D9B)HYM","4Q5)PJT","MZD)5XX","QVM)B6F","HD7)59K","TDG)4LZ","LD6)ZKB","ZF4)2DC","Y6X)K1R","9F2)3GB","79T)6S2","BJ8)47W","VLF)NJK","6QY)Z54","LYW)HWW","D6J)G4N","3CJ)JYH","LNJ)XLB","2C7)LJK","TJ7)SDG","V74)4LY","VHD)3K9","8P7)PSB","PCG)SY4","D1X)3ZF","745)MQV","1GC)C1G","TXB)PMC","Y3X)GK3","DQR)K8J","JNG)CK1","Z54)P65","NWZ)HR8","9N1)SHM","MWB)KCZ","BN3)6RC","K94)YS2","K4Y)5TY","9HP)C95","1XY)C2D","YZ3)1S1","QN1)HY1","Z18)XG3","D94)1LK","VVH)HSQ","84Z)PR1","S1C)W1W","BJ4)86V","MTT)MRL","D7T)FV2","9VN)7QG","MQV)5GT","3RW)TB8","WYC)XDC","HSM)TD2","5GT)VWY","PTG)L35","TTD)WFT","1G2)Q39","FPQ)FDZ","BPG)5BG","RN6)9VN","F2X)ZW5","2TR)KNS","BB6)9S1","52Y)7KF","4NH)WYF","M4L)HQY","Z7L)D9H","P1W)RHL","9HX)9TT","PQB)CZJ","9YR)F8J","H7T)H9Z","WDP)3H3","3PN)SH2","5XX)Z7C","X5H)7K2","VK6)S6M","8XM)QTR","CNV)TKD","3XQ)J55","T9F)MJR","R5B)TPC","1Z7)ZXY","YZB)ZXS","LRN)J25","HWL)T9F","N8K)1CK","99W)8CH","1LK)LMC","HSQ)D9B","V7P)FCB","QZ8)718","FQ5)77D","2N6)THB","RS6)5RC","34G)4VQ","LD9)HLB","496)D64","BN6)G8V","BM7)5BB","4H4)CPH","86W)VBB","T4H)X2L","Z3W)2V5","CK7)YTR","6H9)RG7","X4W)4M8","D5V)7NZ","KPM)WKQ","GBY)6ZC","8X3)PQB","11T)PD4","GBZ)F44","M3V)BJP","C5B)TJ7","7HQ)3P1","PN6)LHC","JC4)Z6S","95D)RH4","WJM)KZJ","92S)WV8","GBZ)H43","R74)2C7","2ZJ)Z11","L49)1XR","RCZ)P1L","KCZ)DNX","QYW)182","4NL)78W","ZKD)61S","XQ3)3D1","K4S)GMG","8XM)2ZJ","785)PGP","JFL)R3Z","4XK)1J9","ZSN)JL1","F15)QZF","9S1)S1J","6RP)52F","NJK)WNB","DQ5)F6P","99Y)79Z","45D)SDY","65K)JRS","DXW)BML","MTT)FQH","J55)G23","R88)DS6","3X6)64J","XDH)W4M"
  ]
end