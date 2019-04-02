const Crawler = require('crawler');
const fs = require('fs');

const baseUrl = 'http://www.aishub.net/stations?sort=SID';
const MAX_PAGES = 100;
let currentIndex = 5;

const c = new Crawler({
  maxConnections: 10,
  rateLimit: 20000,

  callback: function(error, res, done) {
    console.log("url", res.request.uri.href)
    const rowsData = [];

    if (error) {
      console.log(error);
    } else {
      var $ = res.$;

      const rows = $('table.dataTable tr');
      rows.each(function() {
        const $this = $(this);
        rowsData.push({
          id: $this.find('td:nth-child(1)').text(),
          status: $this.find('td:nth-child(2)').text(),
          uptime: $this.find('td:nth-child(3)').text(),
          country: $this.find('td:nth-child(4)').text(),
          location: $this.find('td:nth-child(5)').text(),
          ships: $this.find('td:nth-child(6)').text(),
          distinct: $this.find('td:nth-child(7)').text()
        });
      });
    }


    if (currentIndex < MAX_PAGES) {
			currentIndex++;
			const url = `${baseUrl}&page=${currentIndex}`;
      console.log("push url ", url)
      c.queue(url);
    }

    console.log('complete page', currentIndex);

    fs.writeFile(
      `output/ports-${currentIndex - 1}.json`,
      JSON.stringify(rowsData),
      'utf8',
      done
    );
  }
});

const start = () => {
  c.queue(`${baseUrl}&page=${currentIndex}`);
};

start();
