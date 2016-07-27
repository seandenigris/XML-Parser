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

	((self isHeadSectionOnlyElement: anElementName)
		and: [(self hasOpenElement: 'head') not])
			ifTrue: [self elementsToStart addLast: 'head']
		ifFalse: [
			((self isBodySectionOnlyElement: anElementName)
				or: [(self hasOpenElement: 'head') not])
				ifTrue: [
					(self hasOpenElement: 'body')
						ifFalse: [self elementsToStart addLast: 'body']]].

	^ self elementsToStart.