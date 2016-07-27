assertions
assertElementDecl: anElementDeclaration hasName: aName contentModel: aContentModel
	self
		assert: anElementDeclaration element = aName;
		assert: anElementDeclaration contentModel = aContentModel;
		assert: anElementDeclaration printString = ('<!ELEMENT ', aName, ' ', aContentModel, '>')