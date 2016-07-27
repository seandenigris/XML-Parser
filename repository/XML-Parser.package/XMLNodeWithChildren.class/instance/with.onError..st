private
with: aBlock onError: errorBlock
	^ aBlock
		on: Error
		do: [:error | error signal. errorBlock valueWithPossibleArgument: error]