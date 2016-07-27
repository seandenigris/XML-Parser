tests
test7childNodeEnumeration
	| node nodes |

	node := XMLMockNodeWithElements new.
	self should: [:block | node nodesDo: block] enumerate: #().

	nodes := self newNodes: 5.
	node addNodes: nodes.
	self should: [:block | node nodesDo: block] enumerate: nodes.