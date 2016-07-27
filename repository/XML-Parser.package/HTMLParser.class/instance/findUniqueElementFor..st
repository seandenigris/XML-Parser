private
findUniqueElementFor: anElementName
	^ (#('html' 'head' 'body') includes: anElementName)
		ifTrue: [self document findElementNamed: anElementName]
		ifFalse: [nil]