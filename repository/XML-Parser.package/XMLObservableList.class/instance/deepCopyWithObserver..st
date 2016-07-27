copying
deepCopyWithObserver: anObserver
	| newList |

	newList := self copyEmpty observer: anObserver.
	self do: [:each |
		"avoid copy here to not conflict with XMLNodeWithElements>>copy"
		newList addLast: each shallowCopy postCopy].
	^ newList.