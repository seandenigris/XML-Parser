tests
testNodeListClass
	| document parser listClass |

	listClass := XMLCachingNodeList.
	parser := XMLDOMParser on: self addressBookXML.
	parser configuration nodeListClass: listClass.
	document := parser parseDocument.

	self
		assert: parser configuration nodeListClass == listClass;
		assert: document nodes class == listClass;
		assert: (document allElements allSatisfy: [:each | each nodes class == listClass]).