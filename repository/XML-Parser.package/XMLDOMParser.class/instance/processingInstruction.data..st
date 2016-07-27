content
processingInstruction: piName data: dataString
	self topNode addNode: (XMLPI target: piName data: dataString)