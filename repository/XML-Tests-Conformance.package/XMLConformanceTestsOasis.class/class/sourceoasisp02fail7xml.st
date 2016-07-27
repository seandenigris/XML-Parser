as yet unclassified
sourceoasisp02fail7xml
	| varChar |
	varChar:=String with: (Character codePoint: 6).
	^'<doc>',varChar,  '</doc>'