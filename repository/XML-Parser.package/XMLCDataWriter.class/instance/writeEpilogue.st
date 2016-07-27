private
writeEpilogue
	self writer isCanonical
		ifFalse: [self writer nextPutAll: ']]>']