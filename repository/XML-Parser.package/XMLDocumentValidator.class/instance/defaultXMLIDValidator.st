private
defaultXMLIDValidator
	"used to validate xml:id attributes if there's no DTD or other validators"
	^ defaultXMLIDValidator
		ifNil: [
			defaultXMLIDValidator :=
				XMLIDAttributeXMLIDValidator
					element: ''
					attribute: 'xml:id'
					defaultValidator:
						(XMLAttributeDefaultImpliedValidator attribute: 'xml:id').
			defaultXMLIDValidator
				elementIDValidator: XMLElementIDValidator new;
				yourself]