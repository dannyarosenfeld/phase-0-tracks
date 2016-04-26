Linux doesn't assume that the user is incompetent like windows.  Linux allows the maximum amount of power and lets you do pretty much anything in the terminal.  It focuses less on hiding power behind a GUI and more on giving the user complete control.

A virtual private server runs off of part of a physical server that is divided into various spaces that create its own virtual server- it's a server that is created virtually that runs an operating system that can be accessed via it's own terminal and can respond to HTTP requests.

advantage - VPS gives clients more control than regular shared hosting. 
 It's cheap for small projects.

 cons - sometimes hosts do not handle VPS correctly

 Why not run linux on root?  Because operating systems should generally run applications on a user level.  Using sudo to access root privelages should only be done on a per need basis.  Applications running while administrative privelages are on can be dangerous.  the security model has a purpose for root privelages and user privelages which keeps users safe.