## Shakespeare Analyzer
### Part 1
#### To run Part 1 and view the output of lines per character in your CLI, run:
ruby part1/bin/macbeth_cli_analyzer.rb

#### To run test specs for Part 1, run:
rspec part1/specs/macbeth_cli_analyzer_spec.rb

### Part 2
#### To run Part 2:
cd part2
rails s
Go to http://localhost:3000/
enter the url in the form: http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml

### Part 3
#### Question: but how would you design a model/table if we want to save the results to see history (let’s say, Shakespeare is modifying in Macbeth, and he wants to see how many lines each character speak from version to version) ?

Create one table that has characters

characters
| id | name    |
| -- | ------- |
| 1  | Macbeth |

And another table that has the versions and lines which belongs to the character

lines
| id | charater_id | version | lines |
| -- | ----------- | ------- | ----- |
| 1  | 1           | 1       | 718   |
| 2  | 1           | 2       | 725   |

This would make it easy to query all lines for all versions for a character. It would also be straightforward to get the latest based on the id or version. You could then do an iteration for each character for each version to see the difference in lines over time.
