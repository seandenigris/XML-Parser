removing
removeUnreferencedKeys
	^ self unreferencedKeys collect: [:each | self removeKey: each. each]