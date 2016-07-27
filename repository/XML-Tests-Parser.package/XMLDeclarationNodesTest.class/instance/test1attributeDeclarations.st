tests
test1attributeDeclarations
	self
		assertAttributeDecl: XMLAttributeDeclaration new
		hasElementName: ''
		attributeName: ''
		type: ''
		defaultDecl: ''.
	self
		assertAttributeDecl:
			(XMLAttributeDeclaration
				elementName: 'testElement'
				attributeName: 'testAttribute'
				type: 'CDATA'
				defaultDeclaration: '')
		hasElementName: 'testElement'
		attributeName: 'testAttribute'
		type: 'CDATA'
		defaultDecl: ''.
	self
		assertAttributeDecl:
			(XMLAttributeDeclaration
				elementName: 'testElement'
				attributeName: 'testAttribute'
				type: 'CDATA'
				defaultDeclaration: '(one|two|three)')
		hasElementName: 'testElement'
		attributeName: 'testAttribute'
		type: 'CDATA'
		defaultDecl: '(one|two|three)'.