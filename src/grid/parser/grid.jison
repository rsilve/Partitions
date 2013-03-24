/* description: Parses end executes mathematical expressions. */

/* lexical grammar */
%lex

%%
[ \t]+                   /* skip whitespace */
\n+						return 'NEWLINE';
":"						return 'REPEAT'
"_"						return 'PLACEHOLDER'
"|"						return 'BAR'
[ABCDEFG]				return 'NOTE';
[\w\d\+\-\#°ø]+			return 'MODIFIER';
"/"						return 'BASE';
"X"						return 'EMPTY';
"%"						return 'SAME';
"@"						return 'PART';
"("						return 'LEFT_PARAN';
")"						return 'RIGHT_PARAN';
[\w]+					return 'TEXT';
<<EOF>>               	return 'EOF';

/lex

%start main 

%% /* language grammar */

main
	: /* empty */
	| lines 						{ return $1 }
	;

lines
	: line NEWLINE lines 			{ $3.unshift($1); $$ = $3 } 
	| line EOF   					{ $$ = [ $1 ] }
	;

line
	: measures  		
	;

measures	
	: BAR measures					{ $$ = $2 }
	| measure_repeat BAR measures 	{ $3.unshift($1); $$ = $3 }
	| measure_repeat BAR       		{ $$ = [ $1 ] } 
	| measure_repeat        		{ $$ = [ $1 ] } 
	;

measure_repeat
	: REPEAT measure_repeat	{ $2.repeatLeft = true; $$ = $2 }
	| measure REPEAT		{ $1.repeatRight = true; $$ = $1 }
	| measure
	;

measure
	: EMPTY					{ $$ = { empty: true } }
	| SAME					{ $$ = { same: true } }
	| PART LEFT_PARAN NOTE RIGHT_PARAN chords { $5.part = $3; $$ = $5 } 
	| chords				
	;
	
chords
	: chord chords			{ $2.chords.unshift( $1 ); $$ = $2 }
	| chord					{ $$ = { chords : [ $1 ] } }
	;

chord
	: chord PLACEHOLDER		{ $1.duration ++; $$ = $1 }
	| chordname				{ $$ = { chord : $1, duration: 1} }
	;
	
chordname
	: NOTE MODIFIER BASE NOTE 	{ $$ = $1 + $2 + $3 + $4 }
	| NOTE MODIFIER			{ $$ = $1 + $2 }
	| NOTE 					{ $$ = $1 }
	;


