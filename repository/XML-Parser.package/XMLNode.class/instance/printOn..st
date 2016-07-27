printing
printOn: aStream
	self
		withNewXMLWriterOn: aStream
		do: [:writer | writer writeWith: [self writeXMLOn: writer]]
		whenAbsent: [super printOn: aStream]