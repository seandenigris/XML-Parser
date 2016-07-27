private
afterAdding: aNode at: anIndex
	aNode isElement
		ifTrue: [
			(anIndex = self size
				or: [(self findElementAfter: aNode) isNil])
				ifTrue: [self elementAddedAtEnd: aNode]
				ifFalse: [self elementInsertedBeforeEnd: aNode]].
	super
		afterAdding: aNode
		at: anIndex.