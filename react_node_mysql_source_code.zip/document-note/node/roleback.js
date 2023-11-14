const getList = async  (req,res) => {
    try{
        db.beginTransaction()
        var x = [1,2,3]
        // var y = x[10][0]
        const list1 = await db.query("SELECT * FROM customers");
        var d =  [{"key":"VGA","value":"12GH"}]
        d = JSON.stringify([{"key":"VGA","value":"12GH"}])
        const list2 = await db.query('INSERT INTO `tbl_json` (description) VALUES (?)',[d] )
        const list3 = await db.query("SELECT * FROM customers");
        res.json({
            controller : req.options,
            controller1 : req.controller,
            list3:list3,
            list1 : list1,
            list2 : list2
        })
        await db.commit()
    }catch(e){
        await db.rollback()
        // fs.mkdirSyn('error/customer', { recursive: true }, (err) => {
        //     // if (err) throw err;
        //     fs.writeFileSync("error/customer/getlist.txt","\n"+e.message,{flag:'a+'})
        // })
        res.status(500).send({
            message: 'This is an error!',
            error : e.message
        });
    }

}