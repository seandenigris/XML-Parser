checking
elementsToStartBeforeStarting: anElementName
	self elementsToStart reset.

	self hasOpenElements
		ifFalse: [
			(anElementName = 'html')
				ifTrue: [^ self elementsToStart].
			self elementsToStart addLast: 'html'].

	(anElementName = 'body' or: [anElementName = 'head'])
		ifTrue: [^ self elementsToStart]. 

	(self mustStartHeadSectionFor: anElementName)
		ifTrue: [self elementsToStart addLast: 'head']
		ifFalse: [
			(self mustStartBodySectionFor: anElementName)
				ifTrue: [self elementsToStart addLast: 'body']].

	^ self elementsToStart.