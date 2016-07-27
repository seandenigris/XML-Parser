as yet unclassified
sourceoasisp02fail19xml
	| varChar |
	varChar:=String with: (Character codePoint: 21).
	^'<doc>',varChar,  '</doc>'