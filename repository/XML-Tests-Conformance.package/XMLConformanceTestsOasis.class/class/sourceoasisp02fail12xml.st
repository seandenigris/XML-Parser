as yet unclassified
sourceoasisp02fail12xml
	| varChar |
	varChar:=String with: (Character codePoint: 14).
	^'<doc>',varChar,  '</doc>'