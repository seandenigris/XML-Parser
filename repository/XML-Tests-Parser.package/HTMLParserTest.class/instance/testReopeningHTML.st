tests
testReopeningHTML
	self assert:
		((HTMLParser parse: '<html><B></body></html><I>')
			allElementsCollect: [:each | each name]) asArray = #('html' 'body' 'b' 'i').