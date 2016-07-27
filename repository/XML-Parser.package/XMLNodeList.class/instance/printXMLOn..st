printing
printXMLOn: writer
	self do: [:each | each printXMLOn: writer].