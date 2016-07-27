tokenizing
nextCharacterReferenceOnWriteStream
	| result |

	driver handleStartEntityReferencePosition: self currentPosition.
	result := super nextCharacterReferenceOnWriteStream.
	driver handleEndEntityReferencePosition: self currentPosition.

	^ result.