exports.tinhDiemRam = function (ram, bus_max) {
    var score = 0;
    var temp = ram.split(" ").join("").toLowerCase();
    if (temp.indexOf("gb") == 1) num = Number(temp[temp.indexOf("gb") - 1]);
    else num = Number(temp.substr(0, 2));
    bus = Number(temp.slice(temp.indexOf("mhz") - 4, temp.indexOf("mhz")));
    score += 100 * (num / 4);
    score += 100 * (bus / bus_max);
    if (temp.indexOf("lpddr3") != -1) score += 40;
    else if (temp.indexOf("ddr3l") != -1) score += 30;
    else if (temp.indexOf("ddr4") != -1) score += 80;
    if (temp.indexOf("optane") != -1) score += 30;
    score = Math.round(score);
    return score;
}
exports.tinhDiemMH = function (mh) {
    var temp = mh.split(" ").join("").toLowerCase();
    var score = 100;
    if (temp.indexOf('fhd') >= 0 || temp.indexOf('fullhd') >= 0) score += 100;
    if (temp.indexOf('ips') >= 0) score+= 80;
    if (temp.indexOf('anti-glare') * temp.indexOf('antiglare') != 1 ) score+=30;
    if (temp.indexOf('touch') >= 0) score+=50;
    if (temp.indexOf('truetone') >= 0) score+=40;
    if (temp.indexOf('brightview') >=0 ) score+=20;
    if (temp.indexOf('truelife') >=0 ) score+=10;
    if (temp.indexOf('ultraslim') >=0 ) score+=30;
    if (temp.indexOf('uwva') >=0 ) score+=20;
    if (temp.indexOf('sva') >=0 ) score+=20;
    if (temp.indexOf('infinity') >=0 ) score+=30;
    if (temp.indexOf('wled') >=0 ) score+=20;
    if (temp.indexOf('high-bright') >=0 ) score+=100;

    return score;
}
exports.diemCPU = function (){
    
}