accessing
attributeNodeAt: aLocalName namespaceURI: aURI
	"returns nil if absent"
	^ self attributeNodes
		attributeNodeAt: aLocalName
		namespaceURI: aURI