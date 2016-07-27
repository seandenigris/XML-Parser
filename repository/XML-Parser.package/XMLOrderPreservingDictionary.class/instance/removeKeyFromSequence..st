private
removeKeyFromSequence: aKey
	(self includesKey: aKey)
		ifTrue: [orderedKeys remove: aKey]