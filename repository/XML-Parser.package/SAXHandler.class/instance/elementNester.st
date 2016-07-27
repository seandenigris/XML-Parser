accessing
elementNester
	^ elementNester ifNil: [elementNester := self elementNesterClass new]