accessing
listWithSingleElement
	| list |

	list := super listWithSingleElement.
	self observerOnList: list.
	^ list.