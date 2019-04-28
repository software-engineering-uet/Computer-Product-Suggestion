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
        if (err) throw err;
        else {
            var i = 0;
            var upd = setInterval(function () {
                request(li_link[i] , function(err, respone , body){
                    $ = cheerio.load(body);
                    var  hdd = $(body).find('.fs-tsright ul li:nth-child(3) span');
                    hdd = $(hdd).text();
                    var query = "UPDATE laptop_details SET HDD = '" + hdd + "' WHERE Link_sp = '" + li_link[i] + "'";
                    db.query(query, function(err){
                        if (err) console.log(query);
                    })
                    i++;
                    if ( i == li_link.length -1 )  clearInterval(upd); 
                })
            }, 500);
        }
    })

}

