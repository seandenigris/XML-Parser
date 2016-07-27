copying
deepCopyWithObserver: anObserver
	| newList |

	newList := (self class new: self size) observer: anObserver.
	self do: [:each | newList addLast: each copy].
	^ newList.