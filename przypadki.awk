BEGIN {
    RS="\n\n\n";
    FS=" ";

    print "\\documentclass{beamer}";
    print "\\usetheme{Warsaw}";
    print "\\usepackage[MeX]{polski}";
    print "\\usepackage[utf8]{inputenc}";
    print "\\usepackage{indentfirst,graphicx,amsmath}";
    print "\\usepackage[T1,T2A]{fontenc}";
    print "\\frenchspacing";
    print "\\author{Lew}";
    print "\\begin{document}";
    print "\\begin{center}";
}

{
    print "\\begin{frame}{ " $1 " - " $13 " }";
    print "\\begin{tabular} { c | c c c | c }";
    print  $1 " & " $7 " & \\hspace{2em} & " $13 " & " $19 " \\\\";
    print  $2 " & " $8 " & & " $14 " & " $20 " \\\\";
    print  $3 " & " $9 " & &  " $15 " & " $21 " \\\\";
    print  $4 " & " $10 " & & " $16 " & " $22 "  \\\\";
    print  $5 " & " $11 " & & " $17 " & " $23 " \\\\";
    print  $6 " & " $12 " & & " $18 " & " $24 " \\\\";
    print "\\end{tabular}";

    print "\n\\vfill\n";

    print "\\begin{tabular} { c c }";
    print "{\\bf po polsku / по-польски} & {\\bf po rusku / по-русски} \\\\";
    print "{\\bf " $25 "} & {\\bf " $29 "} \\\\";
    print $26 " & " $30 " \\\\";
    print $27 " & " $31 " \\\\";
    print $28 " & " $32 " \\\\";
    print "\\end{tabular}";
    print "\\end{frame}";
}

END {
    print "\\end{center}";
    print "\\end{document}";
}
