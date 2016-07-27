checking
elementsToStartBeforePCDataDo: aBlock
	self hasOpenElements
		ifFalse: [aBlock value: 'html'].
	(self hasOpenElement: 'body')
		ifFalse: [aBlock value: 'body'].