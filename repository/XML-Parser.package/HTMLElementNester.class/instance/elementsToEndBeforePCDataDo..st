checking
elementsToEndBeforePCDataDo: aBlock
	(self hasOpenElement: 'head')
		ifTrue: [
			self
				elementsToEndBeforeEnding: 'head'
				do: aBlock.
			aBlock value: 'head']