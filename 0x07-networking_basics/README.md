OSI MODEL
7. Application*  - Programs and Services
6. Presentation* - file formats, compression
5. Session*      - open, close and manage sessions between end-user application processes
4. Transport     - Ports, logical communication between application processes                                   
3. Network       - Logical Addressing, Routers                          
2. Data Link+    - Physical Addressing, Switches, NICs 
1. Physical+     - Bits, Media (copper, fiber, radio), NICs, Hubs 

7. Application*  - HTTP, HTTPS, DNS, FTP, SMTP, Telnet, SSH, DHCP, SSL/TLS    
6. Presentation* - MIME                                                           
5. Session*      - RTP, SOCKS
4. Transport     - TCP, UDP                                 
3. Network       - IPv4, IPv6, ICMP, ICMPv6, IPSec                           
2. Data Link+    - MAC addressing, Ethernet, WiFi, DSL, PPP,                 
1. Physical+     - Encoding 1 and 0 s

TCP/IP Protocol Suite    PDU         Header
=====================   =========   ===========         
Application Layer* ----- Data        Application specific fields   
Transport Layer    ----- Segments    src & dst port numbers (host & service)
Internet Layer     ----- Datagrams   src & dst ip addresses
Link Layer+        ----- Frames      src & dst mac addresses
netstat - helps to print out all sorts of connections eg listening, non listening, sockets etc
the link for netstat is as shown below https://www.adminschoice.com/netstat-10-most-common-usage-with-examples
to install netstat use sudo apt install net-tools
