/**
 * Prints out a useful or amusing quote.
 **/
component {

	public void function run(){
		if (!isDefined("variables.quotes")){
			/*
				Brad suggests one of these instead of /system/
				/commandbox
				/commandbox-home

				but I can't seem to make that work...
			*/
			variables.quotes = fileRead( '/system/Quotes.txt' ).listToArray( chr( 13 ) & chr( 10 ) );
		}
		var quote = variables.quotes[ randRange( 1, quotes.len() ) ];

		print.line( quote );
	}
}