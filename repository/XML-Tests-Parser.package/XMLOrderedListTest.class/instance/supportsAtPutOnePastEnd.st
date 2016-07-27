compatibility
supportsAtPutOnePastEnd
	^ supportsAtPutOnePastEnd ifNil: [
		supportsAtPutOnePastEnd := true.
		[self listClass collectionClass new at: 1 put: nil]
			on: Error
			do: [:error | supportsAtPutOnePastEnd := false].
		supportsAtPutOnePastEnd]