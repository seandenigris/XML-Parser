private
startElement: anElementName attributes: anAttributeDictionary
	| prefix |

	self elementNester startElement: anElementName.

	prefix := anElementName qualifiedNamePrefix.
	self saxHandler 
		startElement: anElementName
		prefix: prefix
		uri: ''
		localName: (anElementName qualifiedNameLocalPartFromPrefix: prefix)
		attributes: anAttributeDictionary