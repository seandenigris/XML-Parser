private
beforeAdding: anAttribute
	self attributesByName
		at: anAttribute name
		ifPresent: [:node | self remove: node].
	observer ifNotNil: [observer addingAttribute: anAttribute]