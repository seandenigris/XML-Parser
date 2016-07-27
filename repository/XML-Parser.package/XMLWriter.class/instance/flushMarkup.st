private
flushMarkup
	self activeMarkupWriter
		ifNotNil: [self activeMarkupWriter flushMarkup].