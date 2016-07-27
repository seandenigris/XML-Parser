private
stringFromValues: aCollection
	^ String newFrom: (aCollection collect: [:each | Character value: each])