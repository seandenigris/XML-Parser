checking
elementsToStartBeforeStarting: anElementName do: aBlock
	(anElementName = 'html')
		ifTrue: [^ self].

	self hasOpenElements
		ifFalse: [aBlock value: 'html'].
	
	(anElementName = 'body' or: [anElementName = 'head'])
		ifTrue: [^ self]. 

	(self mustStartHeadSectionFor: anElementName)
		ifTrue: [aBlock value: 'head']
		ifFalse: [
			(self mustStartBodySectionFor: anElementName)
				ifTrue: [aBlock value: 'body']].