tests
testDoctypeDeclaration
	| document doctypeDeclaration |

	document := self nodeClass new.
	self assert: document doctypeDeclaration isNil.
	doctypeDeclaration := XMLDoctypeDeclaration new.
	self
		assert: (document doctypeDeclaration: doctypeDeclaration) == document;
		assert: document doctypeDeclaration == doctypeDeclaration.