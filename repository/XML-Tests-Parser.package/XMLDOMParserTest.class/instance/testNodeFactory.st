tests
testNodeFactory
	| parser newNodeFactory |

	parser := XMLDOMParser on: self addressBookXML.
	self assert: (parser nodeFactory isKindOf: XMLNodeFactory).

	newNodeFactory := XMLPluggableNodeFactory new.
	self
		assert: (parser nodeFactory: newNodeFactory) == parser;
		assert: parser nodeFactory == newNodeFactory.