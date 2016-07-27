private
detectLittleEndianUTF16OrUTF32ByteOrderMark
	(self
		detectByteOrderMark: UTF32LittleEndianByteOrderMark
		forDecoderClass: XMLUTF32LittleEndianStreamDecoder) = UTF16LittleEndianByteOrderMark
		ifTrue: [streamReader decodeStreamWithDecoder: XMLUTF16LittleEndianStreamDecoder new]