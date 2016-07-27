tests
test1attributeDeclarations
	self
		assertAttributeDecl: XMLAttributeDeclaration new
		hasElementName: ''
		attributeName: ''
		type: ''
		default: ''
		value: ''.
	self
		assertAttributeDecl:
			(XMLAttributeDeclaration
				element: 'testElement'
				attribute: 'testAttribute'
				type: 'CDATA'
				defaultPragma: 'IMPLIED'
				defaultValue: '')
		hasElementName: 'testElement'
		attributeName: 'testAttribute'
		type: 'CDATA'
		default: 'IMPLIED'
		value: ''.
	self
		assertAttributeDecl:
			(XMLAttributeDeclaration
				element: 'testElement'
				attribute: 'testAttribute'
				type: 'CDATA'
				defaultPragma: ''
				defaultValue:  'one')
		hasElementName: 'testElement'
		attributeName: 'testAttribute'
		type: 'CDATA'
		default: ''
		value: 'one'.