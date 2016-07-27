printing
prettyPrintOn: aStream
 	"Prints XML with whitespace formatting for readability"
	self
		withNewXMLWriterOn: aStream
		do: [:writer |
			writer
				enablePrettyPrinting;
				writeWith: [self writeXMLOn: writer]]
		whenAbsent: [self printOn: aStream]