REGULAR EXPRESSION
this involves a matching concept majorly used in password matching
REGULAR EXPRESSION
https://web.archive.org/web/20090207140349/http://immike.net/blog/2007/04/06/5-regular-expressions-every-web-programmer-should-know/

metacharacter 
"."
when inside the character class eg [schoo.l]
when outside the character class eg [school].
NB the full stop will only accomodate one character
"^"
show should begin with eg ^shawn meaning must begin with s
when inside the character class this means not including or except eg [^a] meaning except a

"-"
when inside a character class eg [0-9] means any number between 0 and 9
when outside the character class eg -[0-9]
"?"Matching Optional Items: ‘?’
The ‘?’ metacharacter (question mark) means optional. It is placed after a character that is allowed, but not required, at a certain point in an expression. The question mark attaches only to the immediately preceding character.

If I wanted to match the english or american versions of the word ‘flavor’ I could use the regex flavou?r, which is interpreted as “f, followed by l, followed by a, followed by v, followed by o, followed by an optional u, followed by r.”

"$"
means that it should end with eg shawn$ means that it must end with n

The Other Quantifiers: ‘+’ and ‘*’
Like the question mark, the ‘+’ (plus) and ‘*’ (star) metacharacters affect the number of times the preceding character can appear in the expression (with ‘?’ the preceding character could appear 0 or 1 times). The metacharacter ‘+’ matches one or more of the immediately preceding item, while ‘*’ matches any number of the preceding item, including 0

The Interval Quantifier: ‘{}’
The ‘{min, max}’ metasequence allows you to specify the number of times a particular item can match by providing your own minimum and maximum. The regex go{1,5}al would limit our previous example to matching between one and five o’s. The sequence {0,1} is identical to a question mark.

The Escape Character: ‘\’
The ‘\’ metacharacter (backslash) is used to escape metacharacters that have special meaning so you can match them in patterns. For example, if you would like to match the ‘?’ or ‘\’ characters, you can precede them with a backslash, which removes their meaning: ‘\?’ or ‘\\’.

Using Parenthesis for Matching: ‘()’
Most regular expression tools will allow you to capture a particular subset of an expression with parenthesis. I could match the domain portion of a URL by using an expression like http://([^/]+). Let’s break this expression down into it’s components to see how it works.

The beginning of the expression is fairly straightforward: it matches the sequence “h - t - t - p - : - / - /”. This initial sequence is followed by parenthesis, which are used to capture the characters that match the subexpression they surround. In this case the subexpression is ‘[^/]+’, which matches any character except for ‘/’ one or more times. For a URL like http://immike.net/blog/Some-blog-post, ‘immike.net’ will be captured by the parenthesis.


character class
[] example gr[ea]y - so it can either be grey or gray

EXAMPLES
Alphanumeric characters (letters and numbers)
The underscore character (_)
We’ll also want to enforce a 3 character minimum and a 16 character maximum length. Here’s the regular expression that matches this fairly standard set of criteria:

/[a-zA-Z0-9_]{3,16}/
So what’s missing? As it stands our regex will match anywhere within a string. It won’t just match ‘mike_84′, it will also match any ‘%! mike_84&’, which contains several characters we don’t want. What we need are anchors, the ^ (caret) and $ (dollar) characters will anchor our regex to the beginning and end of the string, ensuring that the whole username meets our requirements and not just a portion of it.

So our revised regex will look like this:

/^[a-zA-Z0-9_]{3,16}$/

Matching an XHTML/XML tag
Matching an XML or XHTML tag can be extremely useful if you’re scraping a website for data, or trying to quickly extract information from an XML document. A simple regex to accomplish this sort of extraction follows this form (the word ‘tag’ should be replaced with whatever tag you are looking for):

{<tag[^>]*>(.*?)</tag>}
The question mark following the star turns the start into a lazy quantifier. By default, quantifiers are greedy, meaning they’ll consume as much of the input text as they can. Lazy quantifiers, by contrast, will match as little of the input text as they can

0x06. Regular expression
Regex
DevOps
 By: Sylvain Kalache
 Weight: 1
 Project will start Nov 28, 2023 6:00 AM, must end by Nov 29, 2023 6:00 AM
 Checker was released at Nov 28, 2023 12:00 PM
 An auto review will be launched at the deadline
Concepts
For this project, we expect you to look at this concept:

Regular Expression
Background Context
For this project, you have to build your regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.

Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that you should use, just replace the regexp part, meaning the code in between the //:

sylvain@ubuntu$ cat example.rb
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
sylvain@ubuntu$
sylvain@ubuntu$ ./example.rb 127.0.0.2
127.0.0.2
sylvain@ubuntu$ ./example.rb 127.0.0.1
127.0.0.1
sylvain@ubuntu$ ./example.rb 127.0.0.a
Resources
Read or watch:

Regular expressions - basics
Regular expressions - advanced
Rubular is your best friend
Use a regular expression against a problem: now you have 2 problems
Learn Regular Expressions with simple, interactive exercises
Requirements
General
Allowed editors: vi, vim, emacs
All your files will be interpreted on Ubuntu 20.04 LTS
All your files should end with a new line
A README.md file, at the root of the folder of the project, is mandatory
All your Bash script files must be executable
The first line of all your Bash scripts should be exactly #!/usr/bin/env ruby
All your regex must be built for the Oniguruma library
Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Tasks
0. Simply matching School
mandatory


Requirements:

The regular expression must match School
Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
Example:

sylvain@ubuntu$ ./0-simply_match_school.rb School | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_school.rb "Best School" | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_school.rb "School Best School" | cat -e
SchoolSchool$
sylvain@ubuntu$ ./0-simply_match_school.rb "Grace Hopper" | cat -e
$
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x06-regular_expressions
File: 0-simply_match_school.rb
   
1. Repetition Token #0
mandatory


Requirements:

Find the regular expression that will match the above cases
Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x06-regular_expressions
File: 1-repetition_token_0.rb
   
2. Repetition Token #1
mandatory


Requirements:

Find the regular expression that will match the above cases
Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x06-regular_expressions
File: 2-repetition_token_1.rb
   
3. Repetition Token #2
mandatory


Requirements:

Find the regular expression that will match the above cases
Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x06-regular_expressions
File: 3-repetition_token_2.rb
   
4. Repetition Token #3
mandatory


Requirements:

Find the regular expression that will match the above cases
Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
Your regex should not contain square brackets
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x06-regular_expressions
File: 4-repetition_token_3.rb
   
5. Not quite HBTN yet
mandatory
Requirements:

The regular expression must be exactly matching a string that starts with h ends with n and can have any single character in between
Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
Example:

sylvain@ubuntu$ ./5-beginning_and_end.rb 'hn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbn' | cat -e
hbn$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbtn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'h8n' | cat -e
h8n$
sylvain@ubuntu$
$
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x06-regular_expressions
File: 5-beginning_and_end.rb
   
6. Call me maybe
mandatory
This task is brought to you by a professional advisor Neha Jain, Senior Software Engineer at LinkedIn.

Requirement:

The regular expression must match a 10 digit phone number
Example:

sylvain@ubuntu$ ./6-phone_number.rb 4155049898 | cat -e
4155049898$
sylvain@ubuntu$ ./6-phone_number.rb " 4155049898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415 504 9898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415-504-9898" | cat -e
$
sylvain@ubuntu$
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x06-regular_expressions
File: 6-phone_number.rb
   
7. OMG WHY ARE YOU SHOUTING?
mandatory


Requirement:

The regular expression must be only matching: capital letters
Example:

sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "I realLy hOpe VancouvEr posseSs Yummy Soft vAnilla Dupper Mint Ice Nutella cream" | cat -e
ILOVESYSADMIN$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "WHAT do you SAY?" | cat -e
WHATSAY$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "cannot read you" | cat -e
$
sylvain@ubuntu$
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x06-regular_expressions
File: 7-OMG_WHY_ARE_YOU_SHOUTING.rb
   
Copyright © 2023 ALX, All rights reserved.
