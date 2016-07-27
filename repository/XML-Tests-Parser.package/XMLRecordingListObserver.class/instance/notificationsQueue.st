private
notificationsQueue
	^ notifications ifNil: [notifications := OrderedCollection new]