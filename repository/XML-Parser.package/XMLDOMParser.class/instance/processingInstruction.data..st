content
processingInstruction: piName data: dataString
	| piNode |
	piNode := XMLPI target: piName data: dataString.
	self top addNode: piNode