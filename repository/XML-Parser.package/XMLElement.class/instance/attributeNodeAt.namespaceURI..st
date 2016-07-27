accessing
attributeNodeAt: aName namespaceURI: aURI
	"returns nil if absent"
	^ self attributeNodes
		attributeNodeAt: aName
		namespaceURI: aURI