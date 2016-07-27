accessing
newNodeWithElements
	^ self nodeClass new
		addNode: (XMLComment string: 'before');
		addNode:
			((XMLElement name: 'root')
				addNode: (XMLComment string: 'before');
				addNode:
					((XMLElement named: 'one')
						addNode: (XMLString string: 'testing one');
						addNode: (XMLElement named: 'two');
						addNode: (XMLPI target: 'target' data: 'data');
						yourself);
				addNode: (XMLString string: 'testing two');
				addNode:
					((XMLElement name: 'three' namespaceURI: 'testNS')
						addNode: (XMLElement name: 'four');
						addNode: (XMLCData string: 'testing three');
						yourself);
				addNode:
					((XMLElement name: 'prefix:four' namespaceURI: 'testNS')
						addNode: (XMLElement name: 'prefix:five' namespaceURI: 'testNS');
						yourself);
				addNode: (XMLElement name: 'four');
				yourself);
		addNode: (XMLComment string: 'after');
		yourself.