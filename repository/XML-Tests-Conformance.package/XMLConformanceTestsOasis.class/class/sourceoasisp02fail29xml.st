as yet unclassified
sourceoasisp02fail29xml
	| varChar |
	varChar:=String with: (Character codePoint: 31).
	^'<doc>',varChar,  '</doc>'