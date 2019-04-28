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
exports.diemhdd = function (hdd){
    var score = 100;
    var temp = hdd.split(" ").join("").toLowerCase();
    if (temp.indexOf('ssd+hdd') >= 0 || temp.indexOf('hdd+ssd') >= 0 ){
        score += 500;
    }
    else if (temp.indexOf('ssd') >= 0 && temp.indexOf('khe') >= 0){
        score +=100;
        if (temp.indexOf('1tb') >= 0 || temp.indexOf('1000gb') >= 0) score += 200;
        else if (temp.indexOf('512gb') >= 0 || temp.indexOf('500gb') >= 0) score +=100;
    }
    else if (temp.indexOf('ssd') >= 0){
        score += 300;
        if (temp.indexOf('128gb') >= 0) score+=50;
        else if (temp.indexOf('256gb') >= 0) score+=100;
        else if (temp.indexOf('512gb') >= 0 || temp.indexOf('500gb') >= 0) score+=200;
    }
    else if (temp.indexOf('sshd') >= 0){
        score += 150;
        if (temp.indexOf('512gb') >= 0  || temp.indexOf('500gb') >= 0) score+=100;
        else if (temp.indexOf('1tb') >= 0 || temp.indexOf('1000gb') >= 0) score+=200;
    }
    else {
        if (temp.indexOf('1tb') >= 0 || temp.indexOf('1000gb') >= 0) score+=200;
        if (temp.indexOf('512gb') >= 0  || temp.indexOf('500gb') >= 0) score+=100;
    }
    return score;
}