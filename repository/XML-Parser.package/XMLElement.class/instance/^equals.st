comparing
= anObject

	^ (#(name attributes) allSatisfy: [:selector |
		(anObject respondsTo: selector)
			and: [(self perform: selector) = (anObject perform: selector)]])
		and: [super = anObject]