const Crawler = require('crawler');
const fs = require('fs');

const baseUrl = 'http://www.aishub.net/vessels?&sort=mmsi';
let currentIndex = 1;

const c = new Crawler({
  maxConnections: 10,

  callback: function(error, res, done) {
    const rowsData = [];

    if (error) {
      console.log(error);
    } else {
      var $ = res.$;

      const rows = $('[data-key*="SITE"]');
      rows.each(function() {
        const $this = $(this);

        rowsData.push({
          mmsi: $this.find('td:nth-child(1)').text(),
          vessel: $this.find('td:nth-child(2)').text(),
          imo: $this.find('td:nth-child(3)').text(),
          callsign: $this.find('td:nth-child(4)').text(),
          destination: $this.find('td:nth-child(5)').text(),
          lastReport: $this.find('td:nth-child(6)').text()
        });
      });
    }

    if (currentIndex < 10) {
      c.queue(`${baseUrl}&page=${currentIndex}`);
      currentIndex++;
    }

    fs.writeFile(
      `output/vessel-${currentIndex}.json`,
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
