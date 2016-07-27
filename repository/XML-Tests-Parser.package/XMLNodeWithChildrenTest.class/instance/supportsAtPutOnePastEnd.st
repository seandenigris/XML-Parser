testing
supportsAtPutOnePastEnd
	"for portability"
	[OrderedCollection new at: 1 put: nil]
		on: Error
		do: [:error | ^ false].
	^ true.