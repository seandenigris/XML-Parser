source
userXML
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
							tag: 'user:date-registered' with: DateAndTime now asString;
							tag: 'table-name' with: 'users']]
	"

	^ ' <user:user xmlns:user="urn:user">
    <user:username>jsmith</user:username>
    <user:real-name>John Smith</user:real-name>
    <user:date-registered>2010-11-14T23:53:54-05:00</user:date-registered>
    <table-name>users</table-name>
    <tableName>users</tableName>
</user:user>'