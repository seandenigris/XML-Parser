private
writeXmlnsDeclarations
	self xmlns
		ifNotEmpty: [
			(self hasAlreadyWrittenDefaultNamespace: self xmlns)
				ifFalse: [self writer writeName: 'xmlns' value: self xmlns]].

	self prefixMappings
		ifNotEmpty: [
			self
				writeKeysAndValuesFrom: self prefixMappings
				with: [:prefix :uri |
					(self hasAlreadyWrittenPrefix: prefix uri: uri)
						ifFalse: [self writer writeName: 'xmlns:', prefix value: uri]]].