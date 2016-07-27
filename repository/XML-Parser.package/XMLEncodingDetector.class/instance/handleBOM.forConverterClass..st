private
handleBOM: aByteOrderMark forConverterClass: aConverterClass
	self
		handleBOM: aByteOrderMark
		forConverterClass: aConverterClass
		ifUnmatched: [:matchedPortion | self pushBack: matchedPortion]