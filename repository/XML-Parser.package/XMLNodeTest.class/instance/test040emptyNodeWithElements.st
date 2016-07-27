tests
test040emptyNodeWithElements
	| node |

	node := XMLNodeWithElements new.
	self
		assert: node isEmpty;
		deny: node hasElements;
		assert: node nodes isEmpty;
		assert: node elements isEmpty;
		assert: node topNode isNil;
		assert: node topElement isNil.