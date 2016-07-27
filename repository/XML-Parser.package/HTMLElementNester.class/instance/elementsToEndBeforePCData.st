checking
elementsToEndBeforePCData
	^ (self hasOpenElement: 'head')
		ifTrue: [
			(self elementsToEndBeforeEnding: 'head')
				addLast: 'head';
				yourself]
		ifFalse: [#()]