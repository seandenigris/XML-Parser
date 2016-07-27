tests
testAddElement
	| node element |

	node := self nodeClass new.
	(element := node addElementNamed: 'test')
		addElementNamed: 'first';
		declarePrefix: 'prefix' uri: 'ns';
		addElementNamed: 'prefix:second';
		addElementNamed: 'newprefix:third' namespaceURI: 'newNS'.
	self assert: (element elementNames) asArray = #('first' 'prefix:second' 'newprefix:third').

	self
		should: [element addElementNamed: 'undeclared:fourth']
		raise: XMLNamespaceException.