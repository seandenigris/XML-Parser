tests
test3entityDeclarations
	self
		assertEntityDecl: XMLEntityDeclarationNode new
		hasName: ''
		replacement: ''
		publicID: ''
		systemID: ''
		ndada: ''.
	self
		assertEntityDecl:
			(XMLEntityDeclarationNode
				name: 'testEntity'
				replacement: 'testReplacement')
		hasName: 'testEntity'
		replacement: 'testReplacement'
		publicID: ''
		systemID: ''
		ndada: ''.
	self
		assertEntityDecl:
			(XMLEntityDeclarationNode
				name: 'testEntity'
				publicID: '-//test//test-id//EN'
				systemID: '')
		hasName: 'testEntity'
		replacement: ''
		publicID: '-//test//test-id//EN'
		systemID: ''
		ndada: ''.
	self
		assertEntityDecl:
			(XMLEntityDeclarationNode
				name: 'testEntity'
				publicID: '-//test//test-id//EN'
				systemID: 'http://test')
		hasName: 'testEntity'
		replacement: ''
		publicID: '-//test//test-id//EN'
		systemID: 'http://test'
		ndada: ''.
	self
		assertEntityDecl:
			(XMLEntityDeclarationNode
				name: 'testEntity'
				publicID: ''
				systemID: 'http://test')
		hasName: 'testEntity'
		replacement: ''
		publicID: ''
		systemID: 'http://test'
		ndada: ''.
	self
		assertEntityDecl:
			(XMLEntityDeclarationNode
				name: 'testEntity'
				publicID: '-//test//test-id//EN'
				systemID: 'http://test'
				ndata: 'testNotation')
		hasName: 'testEntity'
		replacement: ''
		publicID: '-//test//test-id//EN'
		systemID: 'http://test'
		ndada: 'testNotation'.