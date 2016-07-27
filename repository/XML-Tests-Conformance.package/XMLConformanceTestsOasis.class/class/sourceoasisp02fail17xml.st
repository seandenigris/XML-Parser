as yet unclassified
sourceoasisp02fail17xml
	| varChar |
	varChar:=String with: (Character codePoint: 19).
	^'<doc>',varChar,  '</doc>'