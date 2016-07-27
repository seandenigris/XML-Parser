accessing
innerXML
	self hasChildren
		ifTrue: [
			self
				withNewXMLWriterOn: (String new: self nodes size * 100) writeStream
				do: [ :writer |
					self writeInnerXMLOn: writer.
					^ writer contents]]
		ifFalse: [^ '']