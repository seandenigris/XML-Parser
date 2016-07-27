accessing
configuration
	^ self document ifNotNil: [:node | node configuration]