printing
printWithoutSelfClosingTagsOn: aStream
	self
		withNewXMLWriterOn: aStream
		do: [ :writer |
			writer
				outputsSelfClosingTags: false;
				writeWith: [ :wr | self writeXMLOn: wr ]]
		whenAbsent: [ self printOn: aStream ]