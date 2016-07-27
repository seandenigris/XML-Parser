checking
beforePCDataElementsToEndDo: aFirstBlock elementsToStartDo: aSecondBlock
	(self hasOpenElement: 'head')
		ifTrue: [
			self
				beforeEnding: 'head'
				elementsToEndDo: aFirstBlock.
			aFirstBlock value: 'head'].

	self hasOpenElements
		ifFalse: [aSecondBlock value: 'html'].
	(self hasOpenElement: 'body')
		ifFalse: [aSecondBlock value: 'body'].