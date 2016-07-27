validating
validate
	"revalidate against the DTD it was parsed with (if any)"

	| dtd |

	((dtd := self doctypeDefinition) notNil
		and: [dtd hasValidators])
		ifTrue: [
			dtd clearIDsAndIDReferences.
			self validateWith: (DTDDocumentValidator doctypeDefinition: dtd)]