tests
testAttributesExcludingDeclarations
	| document   |

	document := XMLDOMParser parse: self addressBookNamespacesXML.
	self deny: document root hasAttributes.