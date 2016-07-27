accessing
nodeClasses
	^ #(XMLDocument XMLElement XMLString XMLCData XMLComment XMLPI)
		collect: [:each | Smalltalk at: each]