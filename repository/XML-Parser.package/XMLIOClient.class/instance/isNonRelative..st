testing
isNonRelative: aResource
	^ aResource notEmpty and: [aResource first == self pathSeparator]