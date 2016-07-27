as yet unclassified
sourceoasisp02fail4xml
	| varChar |
	varChar:=String with: (Character codePoint: 3).
	^'<doc>',varChar,  '</doc>'