checking
elementsToEndBeforePCData
	(self hasOpenElement: 'head')
		ifFalse: [^ #()].

	^ (self elementsToEndBeforeEnding: 'head')
		addLast: 'head';
		yourself.