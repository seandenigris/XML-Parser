tests
testStandardURICombining
	| baseUri |

	baseUri := 'http://a/b/c/d;p?q' asXMLURI.
	self
		assert: (baseUri / 'g:h' asXMLURI) = 'g:h' asXMLURI;
		assert: (baseUri / 'g' asXMLURI) = 'http://a/b/c/g' asXMLURI;
		assert: (baseUri / './g' asXMLURI) = 'http://a/b/c/g' asXMLURI;
		assert: (baseUri / 'g/' asXMLURI) = 'http://a/b/c/g/' asXMLURI;
		assert: (baseUri / '/g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseUri / '//g' asXMLURI) = 'http://g' asXMLURI;
		assert: (baseUri / '?y' asXMLURI) = 'http://a/b/c/d;p?y' asXMLURI;
		assert: (baseUri / 'g?y' asXMLURI) = 'http://a/b/c/g?y' asXMLURI;
		assert: (baseUri / '#s' asXMLURI) = 'http://a/b/c/d;p?q#s' asXMLURI;
		assert: (baseUri / 'g#s' asXMLURI) = 'http://a/b/c/g#s' asXMLURI;
		assert: (baseUri / 'g?y#s' asXMLURI) = 'http://a/b/c/g?y#s' asXMLURI;
		assert: (baseUri / ';x' asXMLURI) = 'http://a/b/c/;x' asXMLURI;
		assert: (baseUri / 'g;x' asXMLURI) = 'http://a/b/c/g;x' asXMLURI;
		assert: (baseUri / 'g;x?y#s' asXMLURI) = 'http://a/b/c/g;x?y#s' asXMLURI;
		assert: (baseUri / '' asXMLURI) = 'http://a/b/c/d;p?q' asXMLURI;
		assert: (baseUri / '.' asXMLURI) = 'http://a/b/c/' asXMLURI;
		assert: (baseUri / './' asXMLURI) = 'http://a/b/c/' asXMLURI;
		assert: (baseUri / '..' asXMLURI) = 'http://a/b/' asXMLURI;
		assert: (baseUri / '../' asXMLURI) = 'http://a/b/' asXMLURI;
		assert: (baseUri / '../g' asXMLURI) = 'http://a/b/g' asXMLURI;
		assert: (baseUri / '../..' asXMLURI) = 'http://a/' asXMLURI;
		assert: (baseUri / '../../' asXMLURI) = 'http://a/' asXMLURI;
		assert: (baseUri / '../../g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseUri / '../../../g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseUri / '../../../../g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseUri / '/./g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseUri / '/../g' asXMLURI) = 'http://a/g' asXMLURI;
		assert: (baseUri / 'g.' asXMLURI) = 'http://a/b/c/g.' asXMLURI;
		assert: (baseUri / '.g' asXMLURI) = 'http://a/b/c/.g' asXMLURI;
		assert: (baseUri / 'g..' asXMLURI) = 'http://a/b/c/g..' asXMLURI;
		assert: (baseUri / '..g' asXMLURI) = 'http://a/b/c/..g' asXMLURI;
		assert: (baseUri / './../g' asXMLURI) = 'http://a/b/g' asXMLURI;
		assert: (baseUri / './g/.' asXMLURI) = 'http://a/b/c/g/' asXMLURI;
		assert: (baseUri / 'g/./h' asXMLURI) = 'http://a/b/c/g/h' asXMLURI;
		assert: (baseUri / 'g/../h' asXMLURI) = 'http://a/b/c/h' asXMLURI;
		assert: (baseUri / 'g;x=1/./y' asXMLURI) = 'http://a/b/c/g;x=1/y' asXMLURI;
		assert: (baseUri / 'g;x=1/../y' asXMLURI) = 'http://a/b/c/y' asXMLURI;
		assert: (baseUri / 'g?y/./x' asXMLURI) = 'http://a/b/c/g?y/./x' asXMLURI;
		assert: (baseUri / 'g?y/../x' asXMLURI) = 'http://a/b/c/g?y/../x' asXMLURI;
		assert: (baseUri / 'g#s/./x' asXMLURI) = 'http://a/b/c/g#s/./x' asXMLURI;
		assert: (baseUri / 'g#s/../x' asXMLURI) = 'http://a/b/c/g#s/../x' asXMLURI;
		assert: (baseUri / 'http:g' asXMLURI) = 'http:g' asXMLURI