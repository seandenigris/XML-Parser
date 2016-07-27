private
detectLittleEndianUTF16BOMOrUTF32BOM
	(self
		detectByteOrderMark: UTF32LittleEndianByteOrderMark
		forDecoderClass: XMLUTF32LittleEndianStreamDecoder)
		ifNotNil: [:remainder |
			remainder = UTF16LittleEndianByteOrderMark
				ifTrue: [
					streamReader decodeStreamWithDecoder:
						XMLUTF16LittleEndianStreamDecoder new]
				ifFalse: [streamReader pushBack: remainder]]