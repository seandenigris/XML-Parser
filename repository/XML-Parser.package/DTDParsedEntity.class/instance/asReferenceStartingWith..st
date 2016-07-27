private
asReferenceStartingWith: aString
	^ (aString, self name) copyWith: $;