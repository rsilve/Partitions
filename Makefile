pdf : pdf/plans.pdf pdf/bang_bang.pdf pdf/Just_a_Gigolo.pdf clean

pdf/%.pdf : src/ly/%.ly
	mkdir -p pdf
	/Applications/Guitare/LilyPond.app/Contents/Resources/bin/lilypond -o pdf/$* -drelative-includes --pdf $^
	rm pdf/$*.ps


clean:
	rm -f src/ly/*.pdf src/ly/*.ps

