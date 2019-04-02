export default class Response {
  constructor({ req = {}, res = {} }, data = null) {
    this.res = res;
    this.req = req;
    this.data = data;
  }

  printLog() {
    const line = `[${new Date()}] - ${this.req.baseUrl} - ${
      this.req.method
    } - ${this.res.statusCode}`;
    console.log(line);
  }

  _200() {
    this.res.status(200).send(this.data);
    this.printLog();
  }

  _500() {
    this.res.status(500).send(this.data);
    this.printLog();
  }
}

export const _200 = ({ req, res }, data) => {
    const response = new Response({ req, res }, data);
    response._200();
};

export const _500 = ({ req, res }, data) => {
    const response = new Response({ req, res }, data);
    response._500();
};
