assertions
assertNode: aNode hasType: aType
	self assertNode: aNode hasTypes: (aType ifNotNil: [Array with: aType] ifNil: [#()])