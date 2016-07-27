tests
test2elementDeclarations
	self
		assertElementDecl: XMLElementDeclarationNode new
		hasName: ''
		contentModel: ''.
	self
		assertElementDecl:
			(XMLElementDeclarationNode
				name: 'testElement'
				contentModel: '(one,two)')
		hasName: 'testElement'
		contentModel: '(one,two)'.