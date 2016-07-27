content
startElement: aQualifiedName prefix: aPrefix uri: aUri localName: aLocalName attributes: aDictionary
	| element |

	(self document root notNil
		and: [(element := self uniqueElementNamed: aQualifiedName) notNil])
		ifTrue: [
			self pushNode: element.
			^ self].

	super
		startElement: aQualifiedName
		prefix: aPrefix
		uri: aUri
		localName: aLocalName
		attributes: aDictionary.