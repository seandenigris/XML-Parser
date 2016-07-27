comparing
= anObject

	^ (#(version encoding) allSatisfy: [:selector |
		(anObject respondsTo: selector)
			and: [(self perform: selector) = (anObject perform: selector)]])
		and: [super = anObject]