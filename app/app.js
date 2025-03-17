const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello World!\n');
});

server.listen(80, '0.0.0.0', () => {
  console.log('Servidor rodando em http://0.0.0.0:80/');
});