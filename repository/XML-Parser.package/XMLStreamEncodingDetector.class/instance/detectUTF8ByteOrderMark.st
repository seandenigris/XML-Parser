private
detectUTF8ByteOrderMark
	(self
		detectByteOrderMark: UTF8ByteOrderMark
		forDecoderClass: XMLUTF8StreamDecoder)
		ifNotNil: [:remainder | streamReader pushBack: remainder]