tests
testDoctypeDeclaration
	| document doctype |

	document := self nodeClass new.
	self assert: document doctypeDeclaration isNil.
	doctype := XMLDoctypeDeclaration new.
	self
		assert: (document doctypeDeclaration: doctype) == document;
		assert: document doctypeDeclaration == doctype.