tests
testPreservingCommentNodes
	| document comment|

	document := XMLDOMParser parse: self addressBookXML.
	self deny: (document findElementNamed: 'contact-info') hasChildren.

	document :=
		(XMLDOMParser on: self addressBookXML)
			preservesCommentNodes: true;
			parseDocument.
	comment := (document findElementNamed: 'contact-info') firstNode.
	self
		assert: comment notNil;
		assert: comment string = 'Confidential'.