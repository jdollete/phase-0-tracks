## What are some common HTTP status codes?

1. 1xx - Informational status which only consist of the Status-Line and optional headers

    100 - Continue  
    101 - Switching Protocols  

2. 2xx - Class of status code which indicates that the client's request was successfully received, understood, and accepted

   200 - OK  
   201 - Created   
   202 - Accepted   
   203 - Non-Authoritative Information  
   204 - No Content  
   205 - Reset Content   
   206 - Partial Content  

3. 3xx - Further action is needed by the user agent in order to fulfill the request

   300 - Multiple Choices  
   301 - Moved Permanently  
   302 - Found  
   303 - See Other  
   304 - Not Modified  
   305 - Use Proxy  
   307 - Temporary Redirect

4. 4xx - Where the client seems to have erred

   400 - Bad Request  
   401 - Unauthorized  
   402 - Payment Required  
   403 - Forbidden  
   404 - Not Found  
   405 - Method Not Allowed  
   406 - Not Acceptable  
   407 - Proxy Authentication Required  
   408 - Request Timeout  
   409 - Conflict  
   410 - Gone  
   411 - Length Required  
   412 - Precondition Failed  
   414 - Request-URI Too Long  
   415 - Unsupported Media Type  
   416 - Requested Range Not Satisfiable  
   417 - Expectation Failed  

5. 5xx - Indication that there's an error on the server side

   500 - Internal Server Error  
   501 - Not Implemented  
   502 - Bad Gateway  
   503 - Service Unavailable  
   504 - Gateway Timeout  
   505 - HTTP Version Not Supported  

## What is the difference between a GET request and a POST request? When might each be used?

* Get Request - This will request data from a specific course

  These are used for fetching documents

* Post Request - This will submit data to be processed to a specific course  

  These general are for updating the server  (Forms)

## Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

   HTTP cookie is data that has been sent from a server to the users browser that could store it and send back together with the next request to the same server. This is typically used to see if the request came from the same browser which allows to keep the user Logged on.   
