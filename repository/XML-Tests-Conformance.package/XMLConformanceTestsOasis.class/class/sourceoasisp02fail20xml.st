as yet unclassified
sourceoasisp02fail20xml
	| varChar |
	varChar:=String with: (Character codePoint: 22).
	^'<doc>',varChar,  '</doc>'