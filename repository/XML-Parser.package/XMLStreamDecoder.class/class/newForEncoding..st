instance creation
newForEncoding: anEncoding
	^ (StreamDecoderCache
		at: anEncoding
		ifAbsentPut: [self findStreamDecoderForEncoding: anEncoding])
			ifNotNil: [:decoderClass |
				decoderClass new
					setEncodingName: anEncoding]