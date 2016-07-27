tests
testAddElementNamed
	| node element |

	node := self nodeClass new.
	(element := node addElementNamed: 'test')
		addElementNamed: 'first';
		declarePrefix: 'prefix' uri: 'ns';
		addElementNamed: 'prefix:second'.
	self assert: element elementNames asArray = #('first' 'prefix:second').
	self
		should: [element addElementNamed: 'undeclared:fourth']
		raise: XMLNamespaceException.