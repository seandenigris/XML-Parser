accessing
changedListElements
	^ self listElements collect: [:each | self changeElement: each]