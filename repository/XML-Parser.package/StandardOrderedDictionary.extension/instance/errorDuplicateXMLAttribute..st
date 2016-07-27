*XML-Parser
errorDuplicateXMLAttribute: aKey
	XMLWellFormednessException
		formatSignal: 'Duplicate attribute "{1}" in element'
		with: aKey