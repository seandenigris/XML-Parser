content
startElement: aQualifiedName prefix: aPrefix uri: aUri localName: aLocalName attributes: aDictionary
	| element |

	(element := self findUniqueElementFor: aQualifiedName)
		ifNotNil: [
			self pushNode: element.
			^ self].

	super
		startElement: aQualifiedName
		prefix: aPrefix
		uri: aUri
		localName: aLocalName
		attributes: aDictionary.