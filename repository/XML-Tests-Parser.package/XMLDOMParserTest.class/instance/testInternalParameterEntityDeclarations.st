tests - internal subset
testInternalParameterEntityDeclarations
	| doctype firstEntity secondEntity |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.

	firstEntity := doctype nodes sixth.
	self
		assert: firstEntity isParameter;
		assert: firstEntity name = 'parameter';
		assert: firstEntity replacement = 'replacement';
		assert: firstEntity publicID isEmpty;
		assert: firstEntity systemID isEmpty.

	secondEntity := doctype nodes seventh.
	self
		assert: secondEntity isParameter;
		assert: secondEntity name = 'externalParameter';
		assert: secondEntity replacement isEmpty;
		assert: secondEntity publicID isEmpty;
		assert: secondEntity systemID = 'external2.dtd'.