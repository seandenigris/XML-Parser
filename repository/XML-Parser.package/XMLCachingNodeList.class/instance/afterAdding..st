private
afterAdding: aNode
	aNode isElement
		ifTrue: [
			((self last == aNode) or: [(self findElementAfter: aNode) isNil])
				ifTrue: [self elementAddedAtEnd: aNode]
				ifFalse: [self elementInsertedBeforeEnd: aNode]].
	super afterAdding: aNode.
			