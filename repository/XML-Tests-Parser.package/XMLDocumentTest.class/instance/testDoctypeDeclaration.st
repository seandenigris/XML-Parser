tests
testDoctypeDeclaration
	| document doctypeDeclaration |

	document := self nodeClass new.
	self assert: document doctypeDeclaration isNil.
	doctypeDeclaration := XMLDoctypeDeclaration new.
	self
		assert: (document doctypeDeclaration: doctypeDeclaration) == document;
		assert: document doctypeDeclaration == doctypeDeclaration;
		assert: doctypeDeclaration parent == document.
	self
		should: [self nodeClass new doctypeDeclaration: document doctypeDeclaration]
		raise: XMLDOMException.

	document doctypeDeclaration: nil.
	self
		assert: document doctypeDeclaration isNil;
		assert: doctypeDeclaration parent isNil.