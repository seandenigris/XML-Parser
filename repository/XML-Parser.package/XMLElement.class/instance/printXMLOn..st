printing
printXMLOn: writer
	writer
		startElement: self name
		attributeList: self attributes
		scope: self namespaceScope.
	(writer canonical not
		and: [self isEmpty and: [self attributes isEmpty not]])
		ifTrue: [writer endEmptyTag: self name]
		ifFalse: [
			writer endTag.
			super printXMLOn: writer.
			writer endTag: self name]