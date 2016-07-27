accessing
streamConverter: aStreamConverter
	streamConverter :=
		(aStreamConverter ifNil: [XMLNullStreamConverter new])