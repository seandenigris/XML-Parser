as yet unclassified
sourceoasisp02fail26xml
	| varChar |
	varChar:=String with: (Character codePoint: 28).
	^'<doc>',varChar,  '</doc>'