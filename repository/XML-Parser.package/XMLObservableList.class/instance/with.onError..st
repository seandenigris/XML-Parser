private
with: aBlock onError: errorBlock
	^ aBlock
		on: Error
		do: [:error |
			errorBlock valueWithPossibleArgument: error.
			error signal]