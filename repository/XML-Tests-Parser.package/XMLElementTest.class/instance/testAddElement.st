tests
testAddElement
	| element |

	element := XMLElement name: 'test' namespaces: (Array with: 'prefix' -> 'ns').
	element
		addElement: 'first';
		addElement: 'prefix:second';
		addElement: (XMLElement name: 'newprefix:third' namespaceURI: 'newNS').
	self assert: (element elementNames) asArray = #('first' 'prefix:second' 'newprefix:third').

	self
		should: [element addElement: 'undeclared:fourth']
		raise: XMLNamespaceException.