private
afterAdding: anAttribute
	self attributesByName
		at: anAttribute name ifPresent: [self removeAttributeNodeAt: anAttribute name];
		at: anAttribute name put: anAttribute.

	observer ifNotNil: [observer addedAttribute: anAttribute].