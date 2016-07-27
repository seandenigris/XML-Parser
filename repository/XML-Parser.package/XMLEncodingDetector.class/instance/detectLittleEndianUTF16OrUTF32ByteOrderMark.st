encodings
detectLittleEndianUTF16OrUTF32ByteOrderMark
	self
		detectByteOrderMark: UTF32LittleEndianByteOrderMark
		forDecoderClass: XMLUTF32LittleEndianStreamDecoder.

	remainder = UTF16LittleEndianByteOrderMark
		ifTrue: [
			remainder := nil.
			streamDecoder := XMLUTF16LittleEndianStreamDecoder new].