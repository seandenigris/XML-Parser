content
processingInstruction: piName data: dataString
	self topNode addNode: (self nodeFactory piClass target: piName data: dataString)