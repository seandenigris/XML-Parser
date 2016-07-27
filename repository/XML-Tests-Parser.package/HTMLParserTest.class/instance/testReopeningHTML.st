tests
testReopeningHTML
	| document |

	document := HTMLParser parse: '<html><B></body></html><I>'.
	self
		assert: (document allElementsCollect: [:each | each name]) asArray = #('html' 'body' 'b' 'i');
		assert: document root nodes size = 1;
		assert: (document root firstElement elementsCollect: [:each | each name]) asArray = #('b' 'i').

	document := HTMLParser parse: '<html><B>bold</body></html>normal'.
	self
		assert: (document allElementsCollect: [:each | each name]) asArray = #('html' 'body' 'b');
		assert: (document findElementNamed: 'body') contentString = 'bold normal'.