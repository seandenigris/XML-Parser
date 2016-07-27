as yet unclassified
removeTests: testMatchPattern 
	self selectors 
		do: [:selector | (testMatchPattern match: selector) ifTrue: [self removeSelector: selector]]