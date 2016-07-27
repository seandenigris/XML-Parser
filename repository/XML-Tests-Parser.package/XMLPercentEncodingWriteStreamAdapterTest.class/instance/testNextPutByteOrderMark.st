as yet unclassified
testNextPutByteOrderMark
	self
		should: [self newStreamAdapter nextPutByteOrderMark]
		raise: Error