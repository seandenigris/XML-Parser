encodings
detectLittleEndianImplicitEncoding
	stream next.
	(stream atEnd not
		and: [stream peek == NullCharacter])
		ifTrue: [
			stream next.
			stream atEnd
				ifFalse: [stream next].
			streamDecoder := XMLUTF32LittleEndianStreamDecoder new]
		ifFalse: [streamDecoder := XMLUTF16LittleEndianStreamDecoder new]