handling tokens
handleEndDocument
	self elementNester openElements
		reverseDo: [:each | self handleEndTag: each].

	super handleEndDocument.