tokenizing
nextCharacterReferenceOnWriteStream
	| result |

	driver handleStartEntityReferencePosition: self currentPosition - 1.
	result := super nextCharacterReferenceOnWriteStream.
	driver handleEndEntityReferencePosition: self currentPosition - 1.

	^ result.