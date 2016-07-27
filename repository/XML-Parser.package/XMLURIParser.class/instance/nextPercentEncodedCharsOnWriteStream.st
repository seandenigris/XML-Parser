private
nextPercentEncodedCharsOnWriteStream
	| percentDecodingReadStreamAdapter |

	percentDecodingReadStreamAdapter :=
		XMLPercentDecodingReadStreamAdapter on: readStream.
	[percentDecodingReadStreamAdapter atEnd]
		whileFalse: [writeStream nextPut: percentDecodingReadStreamAdapter next].