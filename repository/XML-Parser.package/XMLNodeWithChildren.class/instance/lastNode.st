accessing
lastNode
	^ self nodes ifNotEmpty: [ self nodes last ] ifEmpty: [ nil ]