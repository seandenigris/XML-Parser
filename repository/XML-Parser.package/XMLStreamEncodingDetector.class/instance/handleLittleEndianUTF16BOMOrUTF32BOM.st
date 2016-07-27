private
handleLittleEndianUTF16BOMOrUTF32BOM
	self
		handleBOM: UTF32LittleEndianBOM
		forDecoderClass: XMLUTF32LittleEndianStreamDecoder
		ifUnmatched: [:matchedPortion |
			matchedPortion = UTF16LittleEndianBOM
				ifTrue: [
					streamReader decodeStreamWithDecoder:
						XMLUTF16LittleEndianStreamDecoder new]
				ifFalse: [streamReader pushBack: matchedPortion]]