private
defaultXMLIDValidator
	"used to validate xml:id attributes in the absence of DTD or other validators"
	^ defaultXmlIdValidator
		ifNil: [
			defaultXmlIdValidator :=
				XMLXMLIDIDAttributeValidator
					element: ''
					attribute: 'xml:id'
					defaultValueValidator:
						(XMLImpliedValueAttributeValidator attribute: 'xml:id').
			defaultXmlIdValidator
				elementIDValidator: XMLElementIDValidator new;
				yourself]