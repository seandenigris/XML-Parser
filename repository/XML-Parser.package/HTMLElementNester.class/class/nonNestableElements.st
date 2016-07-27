private
nonNestableElements
	^ #('a' 'applet' 'audio' 'button' 'footer' 'form' 'header' 'label' 'map'
		'meter' 'optgroup' 'option' 'ruby' 'select' 'video'),
		self nestableTagGroups keys asArray