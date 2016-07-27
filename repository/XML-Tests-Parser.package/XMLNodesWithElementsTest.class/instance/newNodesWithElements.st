accessing
newNodesWithElements
	| node |

	(node := self nodeClass new)
		addNode: (XMLComment string: 'comment');
		addNode:
			((XMLElement name: 'root')
				addNode:
					((XMLElement named: 'a1')
						addNode: (XMLString string: 'test1');
						addNode: (XMLElement named: 'a2');
						addNode: (XMLPI target: 'a3' data: 'data');
						yourself);
				addNode:
					((XMLElement name: 'b1' namespaceURI: 'testNS')
						addNode: (XMLElement name: 'b2');
						addNode: (XMLCData string: 'test2');
						yourself);
				addNode:
					((XMLElement name: 'prefix:c1' namespaceURI: 'testNS')
						addNode: (XMLElement name: 'prefix:c2' namespaceURI: 'testNS');
						yourself);
				addNode: (XMLElement name: 'c1');
				yourself).
	^ node.