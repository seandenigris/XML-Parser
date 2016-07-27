private
handlerForByteValue: aByteValue
	aByteValue = 0
		ifTrue: [^ #handleBigEndianUTF32BOMOrImplicitEncoding].
	aByteValue = XMLUTF16BigEndianStreamDecoder byteOrderMarkBytes first
		ifTrue: [^ #handleBigEndianUTF16BOM].
	aByteValue = XMLUTF8StreamDecoder byteOrderMarkBytes first
		ifTrue: [^ #handleUTF8BOM].
	aByteValue = XMLUTF16LittleEndianStreamDecoder byteOrderMarkBytes first
		ifTrue: [^ #handleLittleEndianUTF16BOMOrUTF32BOM].
	aByteValue = $< asciiValue
		ifTrue: [^ #handleLittleEndianImplicitEncoding].
	^ nil.