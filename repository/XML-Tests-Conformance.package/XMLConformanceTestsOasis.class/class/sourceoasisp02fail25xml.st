as yet unclassified
sourceoasisp02fail25xml
	| varChar |
	varChar:=String with: (Character codePoint: 27).
	^'<doc>',varChar,  '</doc>'