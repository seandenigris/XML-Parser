assertions
denyList: aList sharesObserverWith: aSecondList
	self deny:
		(aList observer notNil
			and: [aSecondList observer notNil
				and: [aList observer == aSecondList observer]])