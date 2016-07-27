tests
test4notationDeclarations
	self
		assertNotationDecl: XMLNotationDeclaration new
		hasName: ''
		publicID: ''
		systemID: ''.
	self
		assertNotationDecl:
			(XMLNotationDeclaration
				name: 'testNotation'
				publicID: '//test//'
				systemID: '')
		hasName: 'testNotation'
		publicID: '//test//'
		systemID: ''.
	self
		assertNotationDecl:
			(XMLNotationDeclaration
				name: 'testNotation'
				publicID: '//test//'
				systemID: 'http://test/')
		hasName: 'testNotation'
		publicID: '//test//'
		systemID: 'http://test/'.
	self
		assertNotationDecl:
			(XMLNotationDeclaration
				name: 'testNotation'
				publicID: ''
				systemID: 'http://test/')
		hasName: 'testNotation'
		publicID: ''
		systemID: 'http://test/'.