handling tokens
handleXMLDecl: attributes
	attributes keysAndValuesDo: [:key :value |
		self log: key , '->' , value]