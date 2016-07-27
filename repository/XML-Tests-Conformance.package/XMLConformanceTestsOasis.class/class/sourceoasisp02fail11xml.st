as yet unclassified
sourceoasisp02fail11xml
	| varChar |
	varChar:=String with: (Character codePoint: 12).
	^'<doc>',varChar,  '</doc>'