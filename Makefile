pdf:pdf/plans.pdf

pdf/%.pdf:src/ly/%.ly
	mkdir -p pdf
	/Applications/Guitare/LilyPond.app/Contents/Resources/bin/lilypond -o pdf/$*  --pdf $^
	rm pdf/$*.ps
 