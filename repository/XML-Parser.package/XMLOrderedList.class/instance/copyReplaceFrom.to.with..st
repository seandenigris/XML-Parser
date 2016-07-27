copying
copyReplaceFrom: aStart to: aStop with: aReplacementCollection
	^ self newWithCollection:
		(collection
			copyReplaceFrom: aStart
			to: ((aStop max: aStart - 1) min: collection size)
			with: aReplacementCollection)