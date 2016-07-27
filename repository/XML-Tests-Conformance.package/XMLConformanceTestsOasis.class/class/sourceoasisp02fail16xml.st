as yet unclassified
sourceoasisp02fail16xml
	| varChar |
	varChar:=String with: (Character codePoint: 18).
	^'<doc>',varChar,  '</doc>'