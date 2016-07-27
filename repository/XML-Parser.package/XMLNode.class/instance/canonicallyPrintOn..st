printing
canonicallyPrintOn: aStream
 	"Prints on aStream as canonical XML"
	self
		withNewXMLWriterOn: aStream
		do: [ :writer | writer
										isCanonical: true;
										writeWith: [ :wr | self writeXMLOn: wr ] ]
		whenAbsent: [self printOn: aStream]