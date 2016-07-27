content
processingInstruction: aTarget data: aDataString
	self topNode addNode:
		(self nodeFactory newPI
			target: aTarget;
			data: aDataString)