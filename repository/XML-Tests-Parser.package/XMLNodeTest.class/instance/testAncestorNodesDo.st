tests
testAncestorNodesDo
	| node |

	node := self nodeClass new.
	self should: [:block |  node ancestorNodesDo: block] enumerate: #().