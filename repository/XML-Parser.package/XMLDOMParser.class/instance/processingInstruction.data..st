content
processingInstruction: piName data: dataString
	| newElement |
	newElement := XMLPI target: piName data: dataString.
	self top addElement: newElement