private
detectBigEndianUTF16BOM
	(self
		detectByteOrderMark: UTF16BigEndianByteOrderMark
		forDecoderClass: XMLUTF16BigEndianStreamDecoder)
		ifNotNil: [:remainder | streamReader pushBack: remainder]