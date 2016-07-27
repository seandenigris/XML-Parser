class initialization
initializeNonNestableElements
	(NonNestableElements := Set new)
		addAll:
			#('a' 'applet' 'audio' 'button' 'footer' 'form' 'header' 'label' 'map'
				'meter' 'optgroup' 'option' 'ruby' 'select' 'video');
		addAll: NestableTagGroups keys