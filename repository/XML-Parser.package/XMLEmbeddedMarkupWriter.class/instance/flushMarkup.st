private
flushMarkup
	self isWritingBody
		ifTrue: [
			self hasEmbeddedMarkup
				ifFalse: [self startWritingEmbeddedMarkup]]
		ifFalse: [self with: nil]