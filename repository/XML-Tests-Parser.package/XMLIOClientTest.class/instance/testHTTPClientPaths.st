tests
testHTTPClientPaths
	| httpClient domain directoryUrl documentUrl queryUrl |

	httpClient := XMLHTTPClient defaultImplementation new.
	domain := 'http://www.example.com'.
	directoryUrl := domain, '/documents/'.
	documentUrl := directoryUrl, 'document.xml'.
	queryUrl := documentUrl, '?name=value'.
	self
		assert: (httpClient combineRelative: directoryUrl withBase: domain) = directoryUrl;
		assert: (httpClient combineRelative: '/nonrelative' withBase: domain) = (domain, '/nonrelative');
		assert: (httpClient combineRelative: '/nonrelative' withBase: directoryUrl) = (domain, '/nonrelative');
		assert: (httpClient combineRelative: '/nonrelative' withBase: documentUrl) = (domain, '/nonrelative');
		assert: (httpClient combineRelative: 'relative.xml' withBase: directoryUrl) = (directoryUrl, 'relative.xml');
		assert: (httpClient combineRelative: 'relative.xml' withBase: documentUrl) = (directoryUrl, 'relative.xml');
		assert: (httpClient combineRelative: 'relative.xml' withBase: queryUrl) = (directoryUrl, 'relative.xml').