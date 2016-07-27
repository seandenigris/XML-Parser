printing
prettyPrintOn: aStream
	self
		withNewXMLWriterOn: aStream
		do: [ :writer | writer
									enablePrettyPrinting;
									writeWith: [ :wr | self writeXMLOn: wr ] ]
		whenAbsent: [ self printOn: aStream ]