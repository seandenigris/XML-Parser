as yet unclassified
sourceoasisp02fail8xml
	| varChar |
	varChar:=String with: (Character codePoint: 7).
	^'<doc>',varChar,  '</doc>'