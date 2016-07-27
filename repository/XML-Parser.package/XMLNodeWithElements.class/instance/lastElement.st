accessing
lastElement
	^ self elements at: self elements size ifAbsent: [nil]