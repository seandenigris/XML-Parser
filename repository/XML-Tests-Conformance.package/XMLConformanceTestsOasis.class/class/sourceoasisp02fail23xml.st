as yet unclassified
sourceoasisp02fail23xml
	| varChar |
	varChar:=String with: (Character codePoint: 25).
	^'<doc>',varChar,  '</doc>'