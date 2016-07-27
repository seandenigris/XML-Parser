tests
testRenamingParsedNodes
	| document element attribute |

	document := XMLDOMParser parse: '<root xmlns:prefix="ns" name="value"/>'.

	element := document root.
	element name: 'prefix:root'.
	self assert: (document elementAt: 'prefix:root') == element.

	attribute := element attributeNodeAt: 'name'.
	attribute name: 'prefix:name'.
	self
		assert: (element attributeNodeAt: 'prefix:name') == attribute;
		assert: (element attributeAt: 'prefix:name') = 'value'.

	self
		should: [attribute name: 'undeclared:name']
		raise: XMLNamespaceException.
	self
		should: [element name: 'undeclared:root']
		raise: XMLNamespaceException.