as yet unclassified
sourceoasisp02fail9xml
	| varChar |
	varChar:=String with: (Character codePoint: 8).
	^'<doc>',varChar,  '</doc>'