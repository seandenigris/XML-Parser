private
writeEpilogue
	self hasEmbeddedMarkup
		ifTrue: [
			self writer outdent.
			self hasEmbeddedMarkupWriters
				ifTrue: [self writer cr].
			self writeClosingTag]
		ifFalse: [
			self writer isCanonical
				ifTrue: [
					self writer nextPut: $>.
					self writeClosingTag]
				ifFalse: [
					self writer
						space;
						nextPutAll: '/>']].