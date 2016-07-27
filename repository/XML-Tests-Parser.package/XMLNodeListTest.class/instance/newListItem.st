accessing
newListItem
	^ newNode ifNil: [newNode := super newListItem asXMLString]