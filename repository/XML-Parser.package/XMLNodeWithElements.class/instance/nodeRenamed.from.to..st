announcements
nodeRenamed: aNode from: anOldName to: aNewName
	aNode isTag
		ifTrue: [self elementCache rebuildCacheFrom: self nodes].