printing
printXMLOn: writer
	writer
		startElement: self name
		attributeList: self attributeList
		scope: self scope.
	(writer canonical not
		and: [self isEmpty and: [self attributeList notEmpty]])
		ifTrue: [writer endEmptyTag: self name]
		ifFalse: [
			writer endTag.
			super printXMLOn: writer.
			writer endTag: self name]