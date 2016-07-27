initialization
setAttributes: anAssociationCollection
	self hasAttributes
		ifTrue: [self removeAttributes].
	anAssociationCollection associationsDo: [:each |
		self attributeNodes addAttributeAssociation: each].