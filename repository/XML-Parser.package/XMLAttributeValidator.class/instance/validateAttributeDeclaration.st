validating
validateAttributeDeclaration
	self defaultValidator hasDefaultValue
		ifTrue: [| defaultValue |
			self shouldFurtherNormalizeAttributeValue
				ifTrue: [
					defaultValue :=
						self furtherNormalizeAttributeValue:
							self defaultValidator defaultValue.
					self defaultValidator defaultValue: defaultValue]
				ifFalse: [defaultValue := self defaultValidator defaultValue].
			self validateAttributeDefaultValue: defaultValue].

	(self attribute at: 1) == $x "optimization"
		ifTrue: [
			(self attribute = 'xml:id')
				ifTrue: [^ self validateXMLIDAttributeValidator].
			(self attribute = 'xml:space')
				ifTrue: [^ self validateXMLSpaceAttributeValidator]].