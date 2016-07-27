enumerating
collect: aBlock from: aStartIndex to: anEndIndex
	^ self speciesNewWithCollection:
		(collection collect: aBlock from: aStartIndex to: anEndIndex)