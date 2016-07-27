as yet unclassified
sourceoasisp02fail15xml
	| varChar |
	varChar:=String with: (Character codePoint: 17).
	^'<doc>',varChar,  '</doc>'