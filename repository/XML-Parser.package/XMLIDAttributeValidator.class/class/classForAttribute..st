private
classForAttribute: anAttribute
	anAttribute = 'xml:id'
		ifTrue: [^ XMLIDAttributeXMLIDValidator]
		ifFalse: [^ XMLIDAttributeValidator]