checking
elementsToStartBeforePCData
	self elementsToStart reset.

	self hasOpenElements
		ifFalse: [self elementsToStart addLast: 'html'].
	(self hasOpenElement: 'body')
		ifFalse: [self elementsToStart addLast: 'body'].

	^ self elementsToStart.