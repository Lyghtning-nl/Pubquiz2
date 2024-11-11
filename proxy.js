import fs from "fs";
import httpProxy from "http-proxy";

const proxy = httpProxy.createServer({
  target: {
    host: "localhost",
    port: 80,
  },
  ws: true,
  ssl: {
    key: fs.readFileSync("./cert.key", "utf8"),
    cert: fs.readFileSync("./cert.crt", "utf8"),
  },
  secure: false,
});

proxy.on("proxyReq", (proxyReq, req, res) => {
  console.log(`Proxy Request to: ${req.url}`);
});

proxy.listen(4200, () => {
  console.log("listening");
});
