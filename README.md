Dot Net Core Single Container
-----
An example ASP.NET Core API within a single docker container

In order to run this app, run the following commands in root directory:
* docker build . -t dotnetcoresingledocker:v1
* docker run -p 8080:80 dotnetcoresingledocker:v1
