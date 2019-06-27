# demo.ltrc

## please install following 
- https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04

## How to run

### build docker
- sudo docker build .

### how to run docker
- sudo docker run -v /home/vandan/ltrc/mywork/RAwork/demo.ltrc/outputs/:/root/outputs/ -p 8000:8000 8978fa426ffc

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
  "shallow_parsed": "<Sentence id=\"1\">\t\t\t\n1\t((\tNP\t<fs af='बच्चा,n,m,pl,3,d,0,0' head='बच्चे'>\n1.1\tसभी\tQF\t<fs af='सभी,n,m,sg,3,d,0,0' poslcat=\"NM\"  name='सभी'>\n1.2\tबच्चे\tNN\t<fs af='बच्चा,n,m,pl,3,d,0,0' name='बच्चे'>\n\t))\t\t\n2\t((\tNP\t<fs af='किताब,n,f,sg,3,d,0,0' head='किताब'>\n2.1\tकिताब\tNN\t<fs af='किताब,n,f,sg,3,d,0,0' name='किताब'>\n\t))\t\t\n3\t((\tVGF\t<fs af='पढ,v,m,pl,1,,ता_है,wA' vpos=\"tam1_2\"  head='पढ़ते'>\n3.1\tपढ़ते\tVM\t<fs af='पढ,v,m,pl,any,,ता,wA' name='पढ़ते'>\n3.2\t.\tSYM\t<fs af='&डोट्;,punc,,,,,,' name='.'>\n\t))\t\t\n</Sentence>\t\t\t\n"

```

## Maintain BY
- LTRC, IIIT-Hyderabad, India
- Vandan Mujadia (vandan.mu@research.iiit.ac.in)
- Pruthwik Mishra (pruthwik.mishra@research.iiit.ac.in)

