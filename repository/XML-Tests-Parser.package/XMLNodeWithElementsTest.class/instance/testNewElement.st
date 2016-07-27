tests
testNewElement
	| node element |

	node := self nodeClass new.
	element := node newElement.
	self
		assert: element isElement;
		assert: element configuration == node configuration;
		assert: element nodeFactory == node nodeFactory.