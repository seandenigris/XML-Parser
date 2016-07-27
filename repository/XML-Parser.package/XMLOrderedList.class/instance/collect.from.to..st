enumerating
collect: aBlock from: aStartIndex to: anEndIndex
	^ self copyThenSetCollection:
		(collection collect: aBlock from: aStartIndex to: anEndIndex)