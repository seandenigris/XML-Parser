tests
testNodeListClass
	| document parser listClass |

	listClass := XMLCachingNodeList.
	document :=
		(parser := XMLDOMParser on: self addressBookXML)
			nodeListClass: listClass;
			parseDocument.

	self
		assert: parser nodeListClass == listClass;
		assert: document nodes class == listClass;
		assert: (document allElements allSatisfy: [:each | each nodes class == listClass]).