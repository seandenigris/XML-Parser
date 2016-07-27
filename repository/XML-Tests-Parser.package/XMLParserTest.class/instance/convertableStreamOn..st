private
convertableStreamOn: aString
	^ (MultiByteBinaryOrTextStream on: aString from: 1 to: aString size)
		text;
		yourself