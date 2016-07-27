private
elementNester
	^ elementNester ifNil: [elementNester := self elementNesterClass new]