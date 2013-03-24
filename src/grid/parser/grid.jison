/* description: Parses end executes mathematical expressions. */

/* lexical grammar */
%lex

%%
[ \t]+                   /* skip whitespace */
\n+						return 'NEWLINE';
":"						return 'REPEAT'
"_"						return 'PLACEHOLDER'
"|"						return 'BAR'
[ABCDEFG][\w\d\+\-\#°ø]*	return 'CHORD';
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
	| lines { console.log($1) }
	;

lines
	: line lines 			{ $2.unshift($1); $$ = $2 } 
	| line EOF   			{ $$ = [ $1 ] }
	;

line
	: measures NEWLINE 		
	;

measures	
	: BAR measures					{ $$ = $2 }
	| measure_repeat BAR measures 	{ $3.unshift($1); $$ = $3 }
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
	| PART LEFT_PARAN CHORD RIGHT_PARAN chords { $5.part = $3; $$ = $5 } 
	| chords				{ console.log($1) }
	;
	
chords
	: chord chords			{ $2.chords.unshift( $1 ); $$ = $2 }
	| chord					{ $$ = { chords : [ $1 ] } }
	;

chord
	: chord PLACEHOLDER		{ $1.duration ++; $$ = $1 }
	| CHORD					{ $$ = { chord : $1, duration: 1} }
	;


