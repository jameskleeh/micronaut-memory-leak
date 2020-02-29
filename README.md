To reproduce:

`./gradlew clean assemble`
`docker build -t memleak .`
`docker run -p 8080:8080 -p 5005:5005 --name memleak1 memleak`

Remote debugging is enabled, but it wont suspend

To cause the memory leak:

`ab -p test.json -T application/json -c 100 -n 1000 http://localhost:8080/hello`

