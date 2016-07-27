encodings
decodeStreamWithDecoder: aStreamDecoder
	stream isDecodingReadStreamAdapter
		ifTrue: [stream streamDecoder: aStreamDecoder]
		ifFalse: [
			stream :=
				XMLDecodingReadStreamAdapter
					on: stream
					streamDecoder: aStreamDecoder]