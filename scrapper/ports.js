const Crawler = require('crawler');
const fs = require('fs');

const baseUrl = 'http://www.aishub.net/vessels?&sort=mmsi';
const MAX_PAGES = 100;
let currentIndex = 18;

const c = new Crawler({
  maxConnections: 10,
  rateLimit: 20000,

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
          lastReport: $this.find('td:nth-child(6)').text(),
          currentLocation: $this.find('td:nth-child(7)').text()
        });
      });
    }


    if (currentIndex < MAX_PAGES) {
      c.queue(`${baseUrl}&page=${currentIndex}`);
      currentIndex++;
    }

    console.log('complete page', currentIndex);

    fs.writeFile(
      `output/vessel-${currentIndex - 1}.json`,
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
