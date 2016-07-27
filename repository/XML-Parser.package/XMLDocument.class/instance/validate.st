validating
validate
	"revalidate against the DTD it was parsed with (if any)"

	self doctypeDefinition
		ifNotNil: [:dtd |
			dtd hasValidators
				ifTrue: [dtd removeIDsAndIDReferences].
			self validateWith: dtd newValidator]