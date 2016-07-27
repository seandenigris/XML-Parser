private
xmlIDValidator
	^ xmlIdValidator ifNil: [
		xmlIdValidator :=
			XMLIDAttributeValidator
				element: ''
				attribute: 'xml:id'
				defaultValueValidator:
					(XMLImpliedValueAttributeValidator attribute: 'xml:id')]