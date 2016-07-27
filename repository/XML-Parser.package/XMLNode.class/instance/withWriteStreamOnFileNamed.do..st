private
withWriteStreamOnFileNamed: aFileName do: aBlock
	^ aFileName asXMLFileHandle writeStreamDo: aBlock