tests
testCopy
	| node copy |

	(node := self nodeClass new)
		element: XMLElement new.
	copy := node copy.
	self
		deny: copy == node;
		assert: copy element isNil.