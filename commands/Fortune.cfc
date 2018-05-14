/**
 * Prints out a useful or amusing quote.
 **/
component {

	function run(){
		if (!isDefined("variables.quotes")){
			variables.quotes = fileRead( '/system/Quotes.txt' ).listToArray( chr( 13 ) & chr( 10 ) ); 
		}
		var quote = variables.quotes[ randRange( 1, quotes.len() ) ];

		return quote;
	}
}