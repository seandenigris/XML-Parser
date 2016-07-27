validating
validateDeclaration
	(self attribute at: 1) == $x "optimization"
		ifTrue: [
			(self attribute = 'xml:id')
				ifTrue: [^ self validateXMLIDAttributeValidator].
			(self attribute = 'xml:space')
				ifTrue: [^ self validateXMLSpaceAttributeValidator]]