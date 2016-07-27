tests
testSplitAt
	| node newNode element |

	node := self nodeClass string: 'onetwo'.
	newNode := node splitAt: 0.
	self
		deny: node == newNode;
		assert: node string isEmpty;
		assert: newNode string = 'onetwo'.

	node := self nodeClass string: 'onetwo'.
	newNode := node splitAt: 7.
	self
		deny: node == newNode;
		assert: node string = 'onetwo';
		assert: newNode string isEmpty.

	(element := XMLElement new) addNode: node.
	newNode := node splitAt: 4.
	self
		deny: node == newNode;
		assert: node string = 'one';
		assert: newNode string = 'two';
		assert: (element nodeAfter: node) == newNode.