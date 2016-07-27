private
hasAlreadyWrittenDefaultNamespace: aDefaultNamespace
	^ self parent notNil
		and: [self parent isTagWriter
			and: [self parent defaultNamespace = aDefaultNamespace]]