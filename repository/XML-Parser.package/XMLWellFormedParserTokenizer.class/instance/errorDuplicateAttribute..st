errors
errorDuplicateAttribute: anAttributeName
	self
		formatParseError: 'Duplicate attribute "{1}" in start tag'
		with: anAttributeName