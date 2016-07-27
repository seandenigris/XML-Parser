streaming
stream: aStream upToAll: aCollection
	"Answer a subcollection from the current access position to the occurrence (not inclusive) of aCollection. If aCollection is not in the stream, answer nil."

	| startPos endMatch result |
	startPos := aStream position.
	(aStream  match: aCollection) 
		ifTrue: [endMatch := aStream position.
			aStream position: startPos.
			result := aStream next: endMatch - startPos - aCollection size.
			aStream position: endMatch.
			^ result]
		ifFalse: [
			aStream position: startPos.
			^nil].