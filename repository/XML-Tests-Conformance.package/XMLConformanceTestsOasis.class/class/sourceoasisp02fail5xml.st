as yet unclassified
sourceoasisp02fail5xml
	| varChar |
	varChar:=String with: (Character codePoint: 4).
	^'<doc>',varChar,  '</doc>'