private
uniqueElementNamed: anElementName
	^ anElementName = 'html'
		ifTrue: [self document root]
		ifFalse: [
			(anElementName = 'head' or: [anElementName = 'body'])
				ifTrue: [self document root elementAt: anElementName]
				ifFalse: [nil]]