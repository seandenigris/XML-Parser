accessing
elementNester
	^ elementNester ifNil: [elementNester := XMLElementNester new]