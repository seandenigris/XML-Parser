printing
printWithoutSelfClosingTagsOn: aStream
	self
		withNewXMLWriterOn: aStream
		do: [:writer |
			writer
				outputsSelfClosingTags: false;
				writeWith: [self writeXMLOn: writer]]
		whenAbsent: [self printOn: aStream]