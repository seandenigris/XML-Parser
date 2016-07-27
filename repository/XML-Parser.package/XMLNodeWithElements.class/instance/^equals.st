comparing
= anObject

	^ #(namespace namespaceURI nodes)
		allSatisfy: [:selector |
			(anObject respondsTo: selector)
				and: [(self perform: selector) = (anObject perform: selector)]]