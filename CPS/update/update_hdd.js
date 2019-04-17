exports.update_hdd = function () {
    var li_link = [];
    var cheerio = require('cheerio');
    var request = require('request');
    var getLiLink = function (callback) {
        var query = ("SELECT Link_sp FROM laptop_details");
        db.query(query, function (err, res, fieds) {
            if (err) callback(err);
            if (res.length) {
                for (var i = 0; i < res.length; i++) {
                    li_link.push(res[i].Link_sp);
                }
            }
            callback(null, li_link);
        });
    }
    getLiLink(function (err, li_link) {
        var li = [];
        var n = 0;
        if (err) throw err;
        else {
            for (var i = 0 ;i <li_link ;i++) {
                request(li_link[i], function (err, respone, body) {
                    if (err) throw err;
                    else {
                        $ = cheerio.load(body);
                        var hdd = $(body).find('.fs-tsright ul li:nth-child(3)');
                        hdd = $(hdd).text();
                        console.log(li_link[i] + hdd);
                    }
                })
            };
        }
    })
}

