pdf : pdf/plans.pdf pdf/bang_bang.pdf pdf/Just_a_Gigolo.pdf pdf/while_my_guitar_gently_weeps.pdf clean

pdf/%.pdf : src/ly/%.ly
	mkdir -p pdf
	/Applications/Guitare/LilyPond.app/Contents/Resources/bin/lilypond -o pdf/$* -drelative-includes --pdf $^
	rm pdf/$*.ps


clean:
	rm -f src/ly/*.pdf src/ly/*.ps

