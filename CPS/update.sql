UPDATE diemLaptop d SET diemRam = (SELECT diem100 FROM DiemRAM dr WHERE dr.NameRAM = (SELECT RAM FROM laptop_details dl WHERE dl.id = d.id ))
DELETE n1
FROM users n1, users n2
WHERE n1.name = n2.name AND n1.id > n2.id
 db.query("SELECT id,Diem,(SELECT MAX(Diem) FROM DiemCPU) as max FROM DiemCPU", function(err,resu){
            resu.forEach(function(cpu){
                var d100 = cpu.Diem / cpu.max;
            d100 = d100.toPrecision(4) * 100;
            d100 = d100.toFixed(2);
            db.query("UPDATE DiemCPU SET Diem100 = " + d100 + "WHERE id = '" + cpu.id + "'");
            })
        })