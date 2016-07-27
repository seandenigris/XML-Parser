enumerating
collect: aBlock from: aStartIndex to: anEndIndex
	^ self newWithCollection:
		(collection collect: aBlock from: aStartIndex to: anEndIndex)