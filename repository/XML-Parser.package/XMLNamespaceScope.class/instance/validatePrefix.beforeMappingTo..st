private
validatePrefix: aPrefix beforeMappingTo: aUri
	aPrefix = 'xml'
		ifTrue: [
			aUri = self class xmlNamespaceURI
				ifFalse: [self errorCannotRemapXmlPrefix]]
		ifFalse: [
			aPrefix isEmpty "avoid ifEmpty: overhead"
				ifFalse: [
					aPrefix = 'xmlns'
						ifTrue: [self errorCannotMapXmlnsPrefix].
					(aPrefix indexOf: $:) > 0 
						ifTrue: [self errorInvalidPrefix: aPrefix].
					aUri isEmpty
						ifTrue: [self errorCannotMapPrefixToEmptyURI]].
			(aUri = self class xmlNamespaceURI
				or: [aUri = self class xmlnsNamespaceURI])
				ifTrue: [self errorCannotAliasXmlOrXmlnsURIWithPrefix: aPrefix]]