testing
isEmpty
	^ (self hasScheme
		or: [self hasAuthority
			or: [self hasPath
				or: [self hasQuery
					or: [self hasFragment]]]]) not