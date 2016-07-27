as yet unclassified
sourceoasisp02fail2xml
	| varChar |
	varChar:=String with: (Character codePoint: 1).
	^'<doc>',varChar,  '</doc>'