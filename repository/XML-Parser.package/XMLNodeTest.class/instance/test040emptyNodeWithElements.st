tests
test040emptyNodeWithElements
	| node |

	node := XMLMockNodeWithElements new.
	self
		assert: node isEmpty;
		deny: node hasElements;
		assert: node nodes isEmpty;
		assert: node elements isEmpty;
		assert: node firstNode isNil;
		assert: node firstElement isNil.