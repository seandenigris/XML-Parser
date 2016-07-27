errors
errorDuplicateNamespace: aPrefix
	aPrefix
		ifEmpty: [
			self parseError: 'Duplicate default namespace declaration in start tag']
		ifNotEmpty: [
			self
				formatParseError:
					'Duplicate namespace declaration "xmlns:{1}" in start tag'
				with: aPrefix]