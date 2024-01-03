a project on regex
mostly used for search , find and replace and also in password comparison
example
/sch{1,3}l/ - it can only take the following schl,schhl,schhhl
/sch.l/
/sch*l/ - can either be 0 or more h but no other letter can replace h
/sch?l/ - can only be either 0 or 1 h
/[A-Z]/ - can only take capital letters
/[a-zA-Z]/ - can take both capital and small letters
/[0-9]/ - can only take numbers it is the same as using \d
/^[a-z]/ - can only start with small letters
/\Ak/ - can only start with the letter k
/m\Z - can only end with the letter m
/^Kim$/ - must be the name Kim
/\d{10,10}/ - must be a 10 digit number but there is no any other non digit number even space
/\S/ - as long as it is not a whitespace it fits
there are more in the rubular website https://rubular.com/
