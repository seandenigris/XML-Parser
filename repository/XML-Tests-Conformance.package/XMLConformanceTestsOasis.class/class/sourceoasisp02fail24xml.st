as yet unclassified
sourceoasisp02fail24xml
	| varChar |
	varChar:=String with: (Character codePoint: 26).
	^'<doc>',varChar,  '</doc>'