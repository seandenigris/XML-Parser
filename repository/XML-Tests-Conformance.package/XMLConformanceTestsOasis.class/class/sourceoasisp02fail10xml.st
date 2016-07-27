as yet unclassified
sourceoasisp02fail10xml
	| varChar |
	varChar:=String with: (Character codePoint: 11).
	^'<doc>',varChar,  '</doc>'