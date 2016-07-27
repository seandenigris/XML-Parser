testing
hasContent
	^ self nodes anySatisfy: [:each | each isContentNode]