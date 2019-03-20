module.exports = {
    update: function (con) {
        var li_laptop = [];
        var cheerio = require('cheerio');
        var request = require("request");
        var download = require('image-downloader');
        con.connect(function (err) {
            console.log("Connected");
        });
        var getLiLaptop = function (callback) {
            var query = ("SELECT Name FROM Laptop_details");
            con.query(query, function (err, res, fieds) {
                if (err) callback(err);
                if (res.length) {
                    for (var i = 0; i < res.length; i++) {
                        li_laptop.push(res[i].Name);
                    }
                }
                callback(null, li_laptop);
            });
        };
        getLiLaptop(function (err, li_laptop) {

            if (err) console.log("Lỗi khi tải tên Laptop");
            else {

                var j = 1;
                for (j = 1; j < 12; j++) {
                    request("https://fptshop.com.vn/may-tinh-xach-tay?sort=ban-chay-nhat&trang=" + j, function (error, respone, body) {
                        if (error) {
                            console.log(error);
                        }
                        else {

                            $ = cheerio.load(body);
                            var li_na = $(body).find('.fs-ilap-name');
                            var li_link = $(body).find('.fs-ilap-itop a');
                            var li_img = $(body).find('.fs-ilap-img .lazy');
                            var li_pri = $(body).find('.fs-ilap-pri');
                            var li_mh = $(body).find('.fs-ilap-ch ul li:first-child');
                            var li_cpu = $(body).find('.fs-ilap-ch ul li:nth-child(2)');
                            var li_ram = $(body).find('.fs-ilap-ch ul li:nth-child(3)');
                            var li_vga = $(body).find('.fs-ilap-ch ul li:nth-child(4)');
                            li_na.each(function (i, e) {
                                var name = $(li_na[i]).text().trim();
                                var link = 'fptshop.com.vn' + $(li_link[i]).attr('href');
                                var link_img = $(li_img[i]).attr('data-original');
                                // request1('fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s530ua-bq072t-core-i3-8130u', function (error, respone, body) {
                                //     $ = cheerio1.load(body);
                                //     var hdd1 = $(body).find('.fs-tsright ul li:nth-child(3)');
                                //     console.log($(hdd1[0]).text().trim());
                                //     //callback(null, $(hdd1).text().trim());
                                // });
                                var price = $(li_pri[i]).text();
                                price = price.slice(0, -1);
                                price = price.replace('.', '');
                                price = price.replace('.', '');
                                price = Number(price);
                                var mh = $(li_mh[i]).text();
                                mh = mh.substring(mh.indexOf(':') + 1, mh.length);
                                var cpu = $(li_cpu[i]).text();
                                cpu = cpu.substring(cpu.indexOf(':') + 1, cpu.length);
                                var ram = $(li_ram[i]).text();
                                ram = ram.substring(ram.indexOf(':') + 1, ram.length);
                                var vga = $(li_vga[i]).text();
                                vga = vga.substring(vga.indexOf(':') + 1, vga.length);
                                if (li_laptop.indexOf(name) == -1) {
                                    var que = "INSERT INTO laptop_details(Name, Price, CPU, VGA, RAM, Display, Link_sp, Src_img) VALUES("
                                        + "'" + name + "'," + "'" + price + "'," + "'" + cpu + "'," + "'" + vga + "'," + "'" + ram + "',"
                                        + "'" + mh + "'," + "'" + link + "'," + "'NO');";
                                    con.query(que, function (err) {
                                        if (err) console.log("Lỗi update!");
                                    })
                                    // DOWNLOAD ẢNH, LƯU TÊN DƯỚI DẠNG ID.PNG

                                    con.query("SELECT @@IDENTITY as id", function (err, res) {
                                        options = {
                                            url: link_img,
                                            dest: './public/img/laptop/' + res[0].id + '.png'
                                        }

                                        download.image(options)
                                            .then(({ filename, image }) => {
                                                var q = "UPDATE Laptop_details SET Src_img = '" + './public/img/laptop/' + res[0].id + '.png\' ' + 'WHERE id =' + res[0].id;
                                                con.query(q, function (err) {
                                                    if (err) throw err;
                                                });
                                            })
                                            .catch((err) => {
                                                throw err;
                                            })
                                    })
                                }
                            });
                        }
                    });
                }
            }

        });
    }
}
