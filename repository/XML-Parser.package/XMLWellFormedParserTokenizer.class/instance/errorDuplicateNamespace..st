errors
errorDuplicateNamespace: aPrefix
	self parseError:
		(aPrefix
			ifEmpty: [
				'Duplicate default namespace declaration in start tag']
			ifNotEmpty: [
				'Duplicate namespace declaration "xmlns:', aPrefix, '" in start tag'])