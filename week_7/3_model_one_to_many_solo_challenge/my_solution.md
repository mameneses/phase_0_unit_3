# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
User Name,
Name,
Location,
Website,
Email,
Bio

## Release 1: Tweet Fields
Text field (up to 140 characters),
Photo,
Location,
Hashtags,
created at

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
A one to many relationship. They are connect via a 'user_id' field on the 'tweets' table that connects to the 'id' field of the user.  There is one user and that user may have many tweets. 
 
## Release 3: Schema Design
<img src="https://github.com/mameneses/phase_0_unit_3/blob/master/week_7/imgs/3_solo_make_schema_Release%203.jpg?raw=true">

## Release 4: SQL Statements

All the tweets for a certain user id:

SELECT text
FROM tweets
WHERE user_id = "User A"

The tweets for a certain user id that were made after last Wednesday:

SELECT text
FROM users
WHERE used_id = "User A" and created_at = Wed May 14

All the tweets associated with a given user's twitter handle:

SELECT text
FROM  users JOIN tweets ON (users.id=user_id)
WHERE user_name = "User A"

The twitter handle associated with a given tweet id:

SELECT user_name
FROM users JOIN tweets ON (users.id=user_id)
WHERE tweets.id = "given tweet id"

## Release 5: Reflection
I like this solo challenge. It build off of the previous work done with week, which helped to solidify my understanding of the material and schema's. It was helpful that it was very straight forward for the most part. I was confused on what was expected for the user and twitter fields. I noticed that previous model schemas have both created at and updated at data fields but i was not sure how appropriate they would be in this situation. I am not 100% sure what type of data fields where expected for twitter.  
