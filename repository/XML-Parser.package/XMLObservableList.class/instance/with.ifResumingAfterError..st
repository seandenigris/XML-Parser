private
with: aBlock ifResumingAfterError: errorBlock
	^ aBlock
		on: Error
		do: [:error |
			error pass.
			errorBlock value]