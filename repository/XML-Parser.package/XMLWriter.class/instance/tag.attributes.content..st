writing markup
tag: aName attributes: aDictionaryOrArray content: aStringOrCollectionOrBlock
	^ (self tag: aName)
		attributes: aDictionaryOrArray;
		content: aStringOrCollectionOrBlock