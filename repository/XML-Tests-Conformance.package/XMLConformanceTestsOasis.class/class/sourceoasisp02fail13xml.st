as yet unclassified
sourceoasisp02fail13xml
	| varChar |
	varChar:=String with: (Character codePoint: 15).
	^'<doc>',varChar,  '</doc>'