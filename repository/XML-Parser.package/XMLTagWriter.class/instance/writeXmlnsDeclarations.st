private
writeXmlnsDeclarations
	self xmlns
		ifNotEmpty: [
			(self hasWrittenXmlns: self xmlns)
				ifFalse: [self writer writeName: 'xmlns' value: self xmlns]].

	self prefixMappings
		ifNotEmpty: [
			self
				writeKeysAndValuesFrom: self prefixMappings
				with: [:prefix :uri |
					(self hasWrittenXmlns: prefix uri: uri)
						ifFalse: [self writer writeName: 'xmlns:', prefix value: uri]]].