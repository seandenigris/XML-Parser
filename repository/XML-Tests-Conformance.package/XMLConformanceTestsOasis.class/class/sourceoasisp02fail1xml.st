as yet unclassified
sourceoasisp02fail1xml
	| varChar |
	varChar:=String with: (Character codePoint: 0).
	^'<doc>',varChar,  '</doc>'