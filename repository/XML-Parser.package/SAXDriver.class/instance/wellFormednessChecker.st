accessing
wellFormednessChecker
	^ wellFormednessChecker ifNil: [wellFormednessChecker := XMLWellFormednessChecker new]