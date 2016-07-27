tests
testCopy
	| node copy |

	(node := self nodeClass new)
		parent: self nodeClass new.
	copy := node copy.
	self
		deny: copy == node;
		deny: copy hasParent. 