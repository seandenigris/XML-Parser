accessing
listWithElements
	| list |

	list := super listWithElements.
	self observerOnList: list.
	^ list.