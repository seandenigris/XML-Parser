accessing
associations
	^ self keys collect: [:key | self associationAt: key]