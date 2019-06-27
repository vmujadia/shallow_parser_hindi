# Hindi Shallow Parser

## please install following 
- https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04

## How to run

### build docker
- sudo docker build -t hindi_shallow_parser .

### how to run docker
- sudo docker run -v outputs/:/root/outputs/ -p 8000:8000 -t hindi_shallow_parser

### how to run curl command
- curl -i -H "Content-Type: application/json" -X POST -d '{"text":"saBI bacce kiwAba paDZawe hEM ."}' http://127.0.0.1:8000/shallow_parse_hin

### output should be
```
HTTP/1.0 201 CREATED
Content-Type: application/json
Content-Length: 770
Server: Werkzeug/0.9.4 Python/3.4.3
Date: Wed, 26 Jun 2019 15:54:26 GMT

{
  "shallow_parsed": "
<Sentence id="1">         
1   ((   NP   <fs af='बच्चा,n,m,pl,3,d,0,0' head='बच्चे'>
1.1   सभी   QF   <fs af='सभी,n,m,sg,3,d,0,0' poslcat="NM"  name='सभी'>
1.2   बच्चे   NN   <fs af='बच्चा,n,m,pl,3,d,0,0' name='बच्चे'>
   ))      
2   ((   NP   <fs af='किताब,n,f,sg,3,d,0,0' head='किताब'>
2.1   किताब   NN   <fs af='किताब,n,f,sg,3,d,0,0' name='किताब'>
   ))      
3   ((   VGF   <fs af='पढ,v,m,pl,1,,ता_है,wA' vpos="tam1_2"  head='पढ़ते'>
3.1   पढ़ते   VM   <fs af='पढ,v,m,pl,any,,ता,wA' name='पढ़ते'>
3.2   .   SYM   <fs af='&डोट्;,punc,,,,,,' name='.'>
   ))      
</Sentence>         
"
}
```
### please raise an issue if you find any

## Maintain BY
- LTRC, IIIT-Hyderabad, India
  - Vandan Mujadia (vandan.mu@research.iiit.ac.in)
  - Pruthwik Mishra (pruthwik.mishra@research.iiit.ac.in)


