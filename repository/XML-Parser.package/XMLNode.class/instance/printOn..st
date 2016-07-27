printing
printOn: aStream
	self
		withNewXMLWriterOn: aStream
		do: [ :writer | writer writeWith: [ :wr | self writeXMLOn: wr] ]
		whenAbsent: [ super printOn: aStream ]