embedding markup
with: aStringOrCollectionOrBlock
	self writer isCanonical
		ifFalse: [^ super with: aStringOrCollectionOrBlock]