tests
testAncestorElementsDo
	| node |

	node := self nodeClass new.
	self should: [:block |  node ancestorElementsDo: block] enumerate: #().