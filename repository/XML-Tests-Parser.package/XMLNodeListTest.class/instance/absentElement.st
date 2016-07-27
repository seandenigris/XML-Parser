accessing
absentElement
	^ absentNode ifNil: [absentNode := 'absentElement' asXMLString]