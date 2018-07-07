const prerender = require('prerender');
const saveOriginalUserAgentPlugin = require('./plugins/saveOriginalUserAgent');


const server = prerender({
  chromeFlags: ['--no-sandbox', '--headless', '--disable-gpu', '--remote-debugging-port=9222', '--hide-scrollbars'],
  port: 3000,
});

server.use(saveOriginalUserAgentPlugin);
server.use(prerender.removeScriptTags());

server.start();