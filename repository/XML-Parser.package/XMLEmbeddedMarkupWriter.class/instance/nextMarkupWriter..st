private
nextMarkupWriter: aMarkupWriter
	self isWritingBody
		ifTrue: [
			self hasEmbeddedMarkup
				ifFalse: [self startWritingEmbeddedMarkup].
			aMarkupWriter parent: self.
			hasEmbeddedMarkupWriters := true]
		ifFalse: [self write]