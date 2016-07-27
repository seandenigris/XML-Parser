enumerating
collect: aBlock from: aStartIndex to: anEndIndex
	^ self copyEmptyWithCollection:
		(collection collect: aBlock from: aStartIndex to: anEndIndex)