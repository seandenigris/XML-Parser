printing
printOn: aStream beforeWritingDo: aBlock
	"Used to customize XML writing. Raises error without XMLWriter support"

	self
		withNewXMLWriterOn: aStream
		do: [:writer |
			aBlock value: writer.
			self writeXMLOn: writer.
			writer write]