tests
testElementRenaming
	| document element |

	document := XMLDOMParser parse: self addressBookNamespacedXML.

	element := document root.
	element name: 'book:addressbook'.
	self assert: (document elementAt: 'book:addressbook') == element.
	self
		should: [element name: 'undeclared:root']
		raise: XMLNamespaceException.