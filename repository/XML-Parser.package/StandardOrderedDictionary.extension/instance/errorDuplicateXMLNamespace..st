*XML-Parser
errorDuplicateXMLNamespace: aKey
	aKey
		ifEmpty: [
			XMLWellFormednessException signal:
				'Duplicate default namespace declaration in element']
		ifNotEmpty: [
			XMLWellFormednessException
				formatSignal: 'Duplicate namespace declaration "xmlns:{1}" in element'
				with: aKey]