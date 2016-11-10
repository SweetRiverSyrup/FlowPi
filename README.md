# FlowPi

I have made a complete change to the original FlowRiver form for the pi
it is now portable with node on windows.
And I've added WebSockets connection integration to allow on-the-fly
changes to how the form looks for the students from the teachers page

Also, I am building a fully portable version with a quick installer, because I ran into roadblocks and had to implement
the following strategies.

* WebSockets for on-the-fly page configuration changes
* nginx integration as a reverse-proxy to direct traffic on any device to the right place
* SQL-less database system using JSON files and Node.JS fs module to fetch and write these files ( Much cleaner ) to reduce storage consumption
* Reduced form size and number of input fields to eliminate redundancy
* Reduced html code for form from over 20,000 lines to 1,835 lines (not including header files and included files)
* reduced code necessary to process data from users from just under 2,000 to approximately 700
