tests
test1basicNodeProtocol
	| node element |

	node := self nodeClass new.
	self
		deny: node hasChildren;
		assert: node element isNil;
		assert: node contentString isEmpty.

	element := XMLElement new.
	node element: element.
	self assert: node element == element.