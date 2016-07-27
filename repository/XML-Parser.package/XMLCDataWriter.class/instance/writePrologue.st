private
writePrologue
	self writer isCanonical
		ifFalse: [self writer nextPutAll: '<![CDATA[']