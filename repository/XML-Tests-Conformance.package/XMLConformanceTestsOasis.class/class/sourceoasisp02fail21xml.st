as yet unclassified
sourceoasisp02fail21xml
	| varChar |
	varChar:=String with: (Character codePoint: 23).
	^'<doc>',varChar,  '</doc>'