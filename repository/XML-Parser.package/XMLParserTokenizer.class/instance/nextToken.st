tokenizing
nextToken
	(context isInitializedContext
		and: [streamReader atEnd])
		ifTrue: [^ self nextEndDocument].
	context nextTokenFrom: self.