as yet unclassified
sourceoasisp02fail28xml
	| varChar |
	varChar:=String with: (Character codePoint: 30).
	^'<doc>',varChar,  '</doc>'