accessing
valueAt: aName ifAbsentPut: aValue
	^ self
		valueAt: aName
		ifAbsent: [self valueAt: aName put: aValue]