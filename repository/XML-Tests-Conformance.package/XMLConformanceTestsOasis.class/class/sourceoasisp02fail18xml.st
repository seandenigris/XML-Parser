as yet unclassified
sourceoasisp02fail18xml
	| varChar |
	varChar:=String with: (Character codePoint: 20).
	^'<doc>',varChar,  '</doc>'