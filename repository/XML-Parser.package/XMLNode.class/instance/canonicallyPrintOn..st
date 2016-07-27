printing
canonicallyPrintOn: aStream
	self
		withNewXMLWriterOn: aStream
		do: [ :writer | writer
										isCanonical: true;
										writeWith: [ :wr | self writeXMLOn: wr ] ]
		whenAbsent: [self printOn: aStream]