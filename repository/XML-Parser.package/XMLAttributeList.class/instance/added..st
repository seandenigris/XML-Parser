private
added: anObject
	anObject addObserver: self.
	self attributesByName
		at: anObject name ifPresent: [self removeAttributeNamed: anObject name];
		at: anObject name put: anObject..

	self notifyOf: #addedAttribute: with: anObject