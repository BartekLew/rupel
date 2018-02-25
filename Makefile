01-przypadki.pdf: 01-przypadki.txt przypadki.awk
	awk -f przypadki.awk 01-przypadki.txt | sed 's/\(.\)\*/{\\bf\1}/g' > 01-przypadki.tex
	pdflatex 01-przypadki.tex 
	rm 01-przypadki.log 01-przypadki.nav 01-przypadki.toc 01-przypadki.snm 01-przypadki.aux 01-przypadki.out
	evince 01-przypadki.pdf

