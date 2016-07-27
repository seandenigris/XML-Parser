subclass creation
parserSubclassNamed: aName category: aCategory
	^ self
		parserSubclassNamed: aName
		implementing: (self methodsInCategory: #content), (self methodsInCategory: #lexical)
		category: aCategory