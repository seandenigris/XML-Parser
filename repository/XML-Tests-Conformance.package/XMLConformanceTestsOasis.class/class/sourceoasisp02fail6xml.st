as yet unclassified
sourceoasisp02fail6xml
	| varChar |
	varChar:=String with: (Character codePoint: 5).
	^'<doc>',varChar,  '</doc>'