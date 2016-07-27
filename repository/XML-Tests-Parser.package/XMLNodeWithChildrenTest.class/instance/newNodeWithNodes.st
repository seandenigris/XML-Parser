accessing
newNodeWithNodes
	^ self nodeClass new
		addNode: (XMLComment string: 'one');
		addNode: (XMLPI target: 'two' data: 'three');
		addNode: (XMLComment string: 'four');
		addNode: (XMLPI target: 'five' data: 'six');
		yourself