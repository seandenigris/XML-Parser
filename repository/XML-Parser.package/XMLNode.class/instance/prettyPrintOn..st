printing
prettyPrintOn: aStream
	self
		withNewXMLWriterOn: aStream
		do: [:writer |
			writer
				enablePrettyPrinting;
				writeWith: [self writeXMLOn: writer]]
		whenAbsent: [self printOn: aStream]