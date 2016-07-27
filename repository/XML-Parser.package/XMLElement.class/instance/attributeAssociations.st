accessing
attributeAssociations
	^ self attributeNodes collect: [:each | each name -> each value]