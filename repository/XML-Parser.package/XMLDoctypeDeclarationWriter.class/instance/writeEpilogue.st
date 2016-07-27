private
writeEpilogue
	self hasEmbeddedMarkup
		ifTrue: [
			self writer
				outdent;
				cr;
				nextPut: $]].
	self writer
		nextPut: $>;
		cr.