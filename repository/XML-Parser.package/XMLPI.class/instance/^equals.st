comparing
= anObject

	^ #(target data) allSatisfy: [:selector |
		(anObject respondsTo: selector)
			and: [(self perform: selector) = (anObject perform: selector)]]