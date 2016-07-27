as yet unclassified
sourceoasisp02fail27xml
	| varChar |
	varChar:=String with: (Character codePoint: 29).
	^'<doc>',varChar,  '</doc>'