import fs from "fs";
import httpProxy from "http-proxy";

// Gedeelde configuratie
const sharedConfig = {
  ws: true,
  ssl: {
    key: fs.readFileSync("./cert.key", "utf8"),
    cert: fs.readFileSync("./cert.crt", "utf8"),
  },
  secure: false,
  proxyTimeout: 30000,
  socketTimeout: 30000,
  maxConnections: 100,
};

// Functie om een proxyserver te maken
function createProxy(targetPort, listenPort) {
  const proxy = httpProxy.createServer({
    ...sharedConfig,
    target: {
      host: "localhost",
      port: targetPort,
    },
  });

  // proxy.on("proxyReq", (proxyReq, req, res) => {
  //   console.log(
  //     `Proxy on port ${listenPort} forwarding to localhost:${targetPort}, request: ${req.url}`
  //   );
  // });

  proxy.listen(listenPort, () => {
    console.log(
      `Proxy is listening on port ${listenPort}, forwarding to localhost:${targetPort}`
    );
  });

  return proxy;
}

// Maak proxies aan
createProxy(80, 4200); // Proxy voor localhost:80
createProxy(8000, 4300); // Proxy voor localhost:8000
