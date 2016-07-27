copying
copyFrom: start to: end
	^ super copyFrom: (start max: 1) to: (self size min: end)