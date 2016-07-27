writing markup
tag: aName content: aStringOrCollectionOrBlock
	self deprecated: 'use #tag:with: instead'.

	^ (self tag: aName) with: aStringOrCollectionOrBlock.