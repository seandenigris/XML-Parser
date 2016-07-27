as yet unclassified
sourceoasisp02fail3xml
	| varChar |
	varChar:=String with: (Character codePoint: 2).
	^'<doc>',varChar,  '</doc>'