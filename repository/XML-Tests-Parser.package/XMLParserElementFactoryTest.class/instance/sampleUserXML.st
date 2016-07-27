source
sampleUserXML
	"
	XMLWriter new
		enablePrettyPrinting;
		writeWith: [:writer |
			writer tag
				name: 'user:user';
				xmlnsAt: 'user' put: 'urn:user';
				with: [
					writer
						tag: 'user:username' with: 'jsmith';
						tag: 'user:real-name' with: 'John Smith';
						tag: 'user:date-registered' with: (DateAndTime now - 1 week) printString;
						tag: 'user:date-last-active' with: DateAndTime now printString;
						tag: 'table-name' with: 'users';
						tag: 'row-id' with: (Random new next * 100) asInteger printString;
						tag: 'serializationFormat' with: 'XML']]
	"

	^ ' <user:user xmlns:user="urn:user">
    <user:username>jsmith</user:username>
    <user:real-name>John Smith</user:real-name>
    <user:date-registered>2010-11-13T14:35:57-05:00</user:date-registered>
    <user:date-last-active>2010-11-20T14:35:57-05:00</user:date-last-active>
    <table-name>users</table-name>
    <row-id>61</row-id>
    <serializationFormat>XML</serializationFormat>
</user:user>'