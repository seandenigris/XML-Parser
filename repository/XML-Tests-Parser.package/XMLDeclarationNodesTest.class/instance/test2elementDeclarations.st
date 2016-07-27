tests
test2elementDeclarations
	self
		assertElementDecl: XMLElementDeclaration new
		hasName: ''
		contentModel: ''.
	self
		assertElementDecl:
			(XMLElementDeclaration
				name: 'testElement'
				contentModel: '(one,two)')
		hasName: 'testElement'
		contentModel: '(one,two)'.