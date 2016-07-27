accessing
innerXML
	self hasChildren
		ifFalse: [^ ''].
	self
		withNewXMLWriterOn: (String new: self nodes size * 10) writeStream
		do: [ :writer |
			self writeInnerXMLOn: writer.
			^ writer contents].