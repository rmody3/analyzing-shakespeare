Analyzing Shakespeare
Exercise instructions
Who talked the most in Macbeth?


Part 1
Count the number lines each character spoke in a given play
Sample usage/output (using made-up numbers):
$ ruby macbeth_cli_analyzer.rb
 543 Macbeth
 345 Banquo
 220 Duncan
 (etc.)
You can find an XML-encoded version of Macbeth
here: http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml. Your program
should load and parse this file at runtime.
Your solution must be tested, preferably via TDD. Running your tests should not
download the play from the ibiblio.org server.
Note: some lines are attributed to a speaker called "ALL". Your program should ignore
these.


Part 2
Now, let’s make this available to everybody (i.e. not only command line nerds)!
Create a simple Rails app that takes in the XML link as input, and display the result in a
table (or chart if you feel visual today).


Part 3
Don’t necessarily need to code this, but how would you design a model/table if we want
to save the results to see history (let’s say, Shakespeare is modifying in Macbeth, and
he wants to see how many lines each character speak from version to version) ?


Part 1 Tasks:
1. Use Nokogiri to get XML
2. Get all Speakers
3. Count lines for each Speakers
4. Write tests

Part 2 Tasks:
1. Create Rails app
2. Create form to input URL
3. Parse Form using logic from part 1
4. Use speakers and line count and pass into table
5. If time, create graph from datable
6. Apply CSS to table, graph, and form

Part 3:



Other stuff:
There is a weird data anomaly where in one speech there are 2 speakers Macbeth and Lennox, but machbeth has no lines, so the speaker is MacbethLenox and the line count is 1
