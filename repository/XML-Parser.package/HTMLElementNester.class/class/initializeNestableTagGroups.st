class initialization
initializeNestableTagGroups
	NestableTagGroups := Dictionary new.

	#('dd' 'dt') do: [:each |
		NestableTagGroups at: each put: #('dl')].
	#('tr' 'th' 'td' 'thead' 'tfoot') do: [:each |
		NestableTagGroups at: each put: #('table')].
	#('rp' 'rt') do: [:each |
		NestableTagGroups at: each put: #('ruby')].

	NestableTagGroups at: 'li' put: #('ul' 'ol' 'menu' 'dir') asSet.