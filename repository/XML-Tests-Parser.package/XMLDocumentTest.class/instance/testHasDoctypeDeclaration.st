tests
testHasDoctypeDeclaration
	| document |

	document := self nodeClass new.
	self deny: document hasDoctypeDeclaration.
	document doctypeDeclaration: XMLDoctypeDeclaration new.	
	self assert: document hasDoctypeDeclaration.
	document doctypeDeclaration: nil.
	self deny: document hasDoctypeDeclaration.