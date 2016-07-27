accessing
innerXML
	"returns descendent nodes as XML string"
	self hasChildren
		ifTrue: [
			^ self
				withNewXMLWriterOn: (String new: self nodes size * 10) writeStream
				do: [:writer |
					self writeInnerXMLOn: writer.
					writer contents]]
		ifFalse: [^ '']