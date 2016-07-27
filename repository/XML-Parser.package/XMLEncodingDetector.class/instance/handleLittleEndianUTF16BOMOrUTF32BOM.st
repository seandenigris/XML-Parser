private
handleLittleEndianUTF16BOMOrUTF32BOM
	self
		handleBOM: UTF32LittleEndianBOM
		forConverterClass: XMLUTF32LittleEndianStreamConverter
		ifUnmatched: [:matchedPortion |
			matchedPortion = UTF16LittleEndianBOM
				ifTrue: [
					self decodeStreamWithConverter:
						XMLUTF16LittleEndianStreamConverter new]
				ifFalse: [self pushBack: matchedPortion]]