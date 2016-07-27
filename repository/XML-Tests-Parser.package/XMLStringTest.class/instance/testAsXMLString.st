tests
testAsXMLString
	| node |

	node := self nodeClass new.
	self assert: node asXMLString == node.