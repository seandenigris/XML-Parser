assertions
assertElementDecl: anElementDeclaration hasName: aName contentModel: aContentModel
	self
		assert: anElementDeclaration name = aName;
		assert: anElementDeclaration contentModel = aContentModel;
		assert: anElementDeclaration printString = ('<!ELEMENT ', aName, ' ', aContentModel, '>')