private
parseUpToAnyNotSkipping: aCollection startingAfter: aCharacter
	aCharacter ifNotNil: [
		(uriStream atEnd not
			and: [uriStream peek == aCharacter])
			ifFalse: [^ ''].
		uriStream next].

	^ aCollection
		ifEmpty: [uriStream upToEnd]
		ifNotEmpty: [
			writeStream reset.
			[uriStream atEnd
				or: [aCollection includes: uriStream peek]]
				whileFalse: [writeStream nextPut: uriStream next].
			writeStream contents].