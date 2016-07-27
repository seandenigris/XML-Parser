private
afterAdding: anObject
	self attributesByName
		at: anObject name ifPresent: [self removeAttributeNodeAt: anObject name];
		at: anObject name put: anObject.

	observer ifNotNil: [observer addedAttribute: anObject].