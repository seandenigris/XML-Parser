printing
canonicallyPrintOn: aStream
 	"Prints on aStream as canonical XML"
	self
		withNewXMLWriterOn: aStream
		do: [:writer |
			writer
				isCanonical: true;
				writeWith: [self writeXMLOn: writer]]
		whenAbsent: [self printOn: aStream]