tests
test4notationDeclarations
	self
		assertNotationDecl: XMLNotationDeclarationNode new
		hasName: ''
		publicID: ''
		systemID: ''.
	self
		assertNotationDecl:
			(XMLNotationDeclarationNode
				name: 'testNotation'
				publicID: '//test//'
				systemID: '')
		hasName: 'testNotation'
		publicID: '//test//'
		systemID: ''.
	self
		assertNotationDecl:
			(XMLNotationDeclarationNode
				name: 'testNotation'
				publicID: '//test//'
				systemID: 'http://test/')
		hasName: 'testNotation'
		publicID: '//test//'
		systemID: 'http://test/'.
	self
		assertNotationDecl:
			(XMLNotationDeclarationNode
				name: 'testNotation'
				publicID: ''
				systemID: 'http://test/')
		hasName: 'testNotation'
		publicID: ''
		systemID: 'http://test/'.