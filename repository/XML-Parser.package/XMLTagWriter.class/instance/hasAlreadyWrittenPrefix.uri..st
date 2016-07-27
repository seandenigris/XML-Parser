private
hasAlreadyWrittenPrefix: aPrefix uri: aUri
	^ self parent notNil
		and: [self parent isTagWriter
			and: [(self parent xmlnsAt: aPrefix ifAbsent: [^ false]) = aUri]]