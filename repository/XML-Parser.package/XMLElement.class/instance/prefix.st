accessing
prefix
	"returns the prefix of the name of the receiver or an empty string if
	there isn't one"

	^ self name xmlPrefixBeforeLocalName: self localName