accessing
handlerForLeadByte: aByte
	aByte = 0
		ifTrue: [^ #detectBigEndianUTF32OrImplicitEncdoing].
	aByte = XMLUTF16BigEndianStreamDecoder byteOrderMarkBytes first
		ifTrue: [^ #detectBigEndianUTF16ByteOrderMark].
	aByte = XMLUTF8StreamDecoder byteOrderMarkBytes first
		ifTrue: [^ #detectUTF8ByteOrderMark].
	aByte = XMLUTF16LittleEndianStreamDecoder byteOrderMarkBytes first
		ifTrue: [^ #detectLittleEndianUTF16OrUTF32ByteOrderMark].
	^ nil.