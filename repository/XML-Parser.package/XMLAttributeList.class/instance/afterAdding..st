private
afterAdding: anAttribute
	self attributesByName
		at: anAttribute name
		put: anAttribute.
	observer ifNotNil: [observer addedAttribute: anAttribute].