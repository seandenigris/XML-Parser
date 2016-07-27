private
writeEpilogue
	self hasEmbeddedMarkup
		ifTrue: [
			self writer outdent.
			self hasEmbeddedMarkupWriters
				ifTrue: [self writer cr].
			self writeEndTag]
		ifFalse: [
			self writer isCanonical
				ifTrue: [
					self writer nextPut: $>.
					self writeEndTag]
				ifFalse: [
					self writer
						space;
						nextPutAll: '/>']].