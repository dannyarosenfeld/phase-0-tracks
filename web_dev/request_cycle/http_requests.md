HTTP STATUS CODES
200 okay, succeeded
202 request accepted but still pending
100 client should continue
307 temporary redirect

GET VS POST

The get method requests data from the server.  You would use the get method if you were sending non sensitive data that you aren't worried about being bookmarked/stolen.  Don't use GET for sensitive data!
Get includes data in the URL.

Post is the more secure method of request.  Post submits data to the server to be processed.  Post is better for more sensitive data like passwords.

COOKIE

A cookie is data that a website stores on the clients browser.  When the client revisits the website the cookie is sent by the website to the server to notify the server of past activity.  For example how a website keeps track of if a user is still logged in or not.

Cookies are passed as HTTP headers