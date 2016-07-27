accessing
firstNode
	^ self nodes ifNotEmpty: [ self nodes first ] ifEmpty: [ nil ]