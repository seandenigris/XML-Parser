tests
testCopyingNodes
	| document |

	document := XMLDOMParser parse: self addressBookXML.
	self assertDocument: document copy isCopyOf: document.

	document := XMLDOMParser parse: self addressBookXMLWithDTD.
	self assertDocument: document copy isCopyOf: document.

	document := XMLDOMParser parse: self addressBookNamespacePrefixedXML.
	self assertDocument: document copy isCopyOf: document.

	document := XMLDOMParser parse: self internalSubsetWithDeclarations.
	self assertDocument: document copy isCopyOf: document.