running
createDummyClasses
	self nodeClasses
		with: self dummyClassNames
		do: [:nodeClass :dummyName |
			self
				createDummySubclassOf: nodeClass
				named: dummyName]