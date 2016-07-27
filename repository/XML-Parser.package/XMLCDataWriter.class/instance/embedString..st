private
embedString: aString
	self writer isCanonical
		ifTrue: [self writer writeXmlEncoded: aString]
		ifFalse: [self writer nextPutAll: aString]