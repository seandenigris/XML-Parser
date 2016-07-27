tests - internal subset
testDoctypeDeclaration
	| doctype |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.
	self
		assert: doctype root = 'root';
		assert: doctype publicID = 'pubid';
		assert: doctype systemID = 'external.dtd'.