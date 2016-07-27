accessing
elementBefore: anElement
	^ self elements before: anElement ifAbsent: [nil]