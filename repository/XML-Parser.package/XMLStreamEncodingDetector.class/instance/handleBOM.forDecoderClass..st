private
handleBOM: aByteOrderMark forDecoderClass: aDecoderClass
	self
		handleBOM: aByteOrderMark
		forDecoderClass: aDecoderClass
		ifUnmatched: [:matchedPortion | streamReader pushBack: matchedPortion]