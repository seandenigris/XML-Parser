printing
printXMLOn: writer
	self nodesDo: [:each | each printXMLOn: writer].