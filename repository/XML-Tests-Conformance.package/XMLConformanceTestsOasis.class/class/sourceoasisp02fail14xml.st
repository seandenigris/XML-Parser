as yet unclassified
sourceoasisp02fail14xml
	| varChar |
	varChar:=String with: (Character codePoint: 16).
	^'<doc>',varChar,  '</doc>'