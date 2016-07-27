tests - internal subset
testInternalElementDeclaration
	| doctype |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.
	self
		assert: doctype nodes first element = 'root';
		assert: doctype nodes first contentModel = '(#PCDATA|one|two)*'.