using PGFPlots
using LaTeXStrings

standard_mott_data = [
    0.20296121257659727 0.24329183103221563;
    0.004326158172311967 0.24971236028928334;
    0.40161405546020945 0.2363576594345825;
    0.6002491098644944 0.22993713017751477;
    0.7988930585084433 0.22325977975016437;
    0.9915156069002224 0.21683925049309663;
    1.1961631673170137 0.21041872123602892;
    1.4068321279859741 0.2037413708086785;
    1.5994457821380903 0.19757766272189348;
    1.7980808365423753 0.19115713346482577;
    1.9906855964548276 0.18525024654832345;
    2.1953242626319556 0.17908653846153844;
    2.39393263431725 0.17343647271531887;
    2.5925676887215348 0.16701594345825113;
    2.7911849546464937 0.16110905654174884;
    3.0018361268361273 0.15494534845496383;
    3.206483687252918 0.14852481919789612;
    3.3930848353925276 0.1423611111111111;
    3.603727113342498 0.1364542241946088;
    3.7963407674946135 0.13029051610782377;
    3.9949491391799086 0.12464045036160418;
    4.1995700168777095 0.11899038461538461;
    4.398160600083678 0.11385396120973043;
    4.602781477781479 0.10820389546351084;
    4.8073934612396165 0.10281065088757396;
    5.011978761978763 0.0981878698224852;
    5.192487355948895 0.09433555226824455;
    5.40911545719238 0.08919912886259038;
    5.6016579574271885 0.08508999013806706;
    5.794191563422333 0.08123767258382641;
    5.992737675429983 0.0773853550295858;
    6.203299905222983 0.07378985864562787;
    6.395815722738801 0.07045118343195264;
    6.600365446519293 0.06685568704799474;
    6.804879593341132 0.06428747534516766;
    6.99739541085695 0.060948800131492425;
    7.201900663439125 0.05863740959894803;
    7.400393410008795 0.056326019066403665;
    7.604925345309961 0.05324416502301116;
    7.77935027935028 0.05144641683103221;
    7.983837743453129 0.04964866863905326;
]'

standard_plot_p = Plots.Linear(standard_mott_data, mark="none")

my_plot_p = Plots.Linear(
    [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    [
        0.24999999999999095,
        0.21727191305907062,
        0.18581371514771322,
        0.15352850168700077,
        0.12654426716704903,
        0.0985124361962478,
        0.0766485917157445,
        0.062296524136421935,
        0.050154864467295446
    ], 
    errorBars = ErrorBars(y=[
        0,
        0.0007561114979888223,
        0.0008073430676117747,
        0.0031608185971107785,
        0.0017385872066807697,
        0.002199980983991076,
        0.00300015641265036,
        0.0013116551967716418,
        0.0016903917878346142
    ]), mark = ".", onlyMarks=true)

p = Axis([standard_plot_p, my_plot_p], xlabel=L"U", ylabel=L"\langle n_{i \uparrow} n_{i \downarrow} \rangle")
save("D:/Projects/Modern Physics Experiments/HTML5/hubbard-report/double_occ_compare.pdf", p)