class initialization
initializeNestableTagGroups
	NestableTagGroups := Dictionary new.

	#('dd' 'dt') do: [:each |
		NestableTagGroups at: each put: #('dl')].
	#('tr' 'th' 'td' 'thead' 'tfoot') do: [:each |
		NestableTagGroups at: each put: #('table')].
	#('li') do: [:each |
		NestableTagGroups at: each put: #('ul' 'ol' 'menu' 'dir')].
	#('rp' 'rt') do: [:each |
		NestableTagGroups at: each put: #('ruby')].