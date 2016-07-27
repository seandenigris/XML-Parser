private
hasWrittenXmlns: aDefaultNamespace
	^ self parent notNil
		and: [self parent isTagWriter
			and: [self parent xmlns = aDefaultNamespace]]