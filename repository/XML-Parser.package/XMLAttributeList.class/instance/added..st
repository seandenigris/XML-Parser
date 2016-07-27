private
added: anObject
	self startObserving: anObject.
	self attributesByName
		at: anObject name ifPresent: [self removeAttributeNamed: anObject name];
		at: anObject name put: anObject..

	self notifyOf: #addedAttribute: with: anObject