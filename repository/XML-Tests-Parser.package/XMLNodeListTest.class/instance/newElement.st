accessing
newElement
	^ newNode ifNil: [newNode := 'newElement' asXMLString]