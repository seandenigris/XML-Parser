private
write
	self isWritingBody
		ifTrue: [
			self hasEmbeddedMarkup
				ifFalse: [self startWritingEmbeddedMarkup]]
		ifFalse: [self with: nil]