tests
testInternalGeneralEntityDeclarations
	| doctype firstEntity secondEntity |

	doctype :=
		(XMLDOMParser
			parse: self internalSubsetWithDeclarations
			usingNamespaces: true
			validation: true
			externalEntities: false) doctypeDeclaration.

	firstEntity := doctype nodes fourth.
	self
		deny: firstEntity isParameter;
		assert: firstEntity name = 'general';
		assert: firstEntity replacement = 'replacement';
		assert: firstEntity publicID isEmpty;
		assert: firstEntity systemID isEmpty;
		assert: firstEntity ndata isEmpty.

	secondEntity := doctype nodes fifth.
	self
		deny: secondEntity isParameter;
		assert: secondEntity name = 'externalGeneral';
		assert: secondEntity replacement isEmpty;
		assert: secondEntity publicID = 'pubid2';
		assert: secondEntity systemID = 'external1.dtd';
		assert: secondEntity ndata isEmpty.