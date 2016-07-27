tests
test040emptyNodeWithElements
	| node |

	node := XMLMockNodeWithElements new.
	self
		assert: node isEmpty;
		deny: node notEmpty;
		deny: node hasElements;
		assert: node nodes isEmpty;
		assert: node elements isEmpty;
		assert: node firstNode isNil;
		assert: node firstElement isNil;
		assert: node lastNode isNil;
		assert: node lastElement isNil.