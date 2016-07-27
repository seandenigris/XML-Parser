as yet unclassified
sourceoasisp02fail22xml
	| varChar |
	varChar:=String with: (Character codePoint: 24).
	^'<doc>',varChar,  '</doc>'