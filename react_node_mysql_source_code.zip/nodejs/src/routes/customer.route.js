
const { upload } = require('../util/service')
const {userGuard} = require("../controllers/auth.controller")
const customerController = require("../controllers/customer.controller")
const customer = (app) => {
    app.get("/api/customer/get-list",userGuard,customerController.getList)
    app.post("/api/customer/create",userGuard,upload.single("myfile"),customerController.create)
    app.post("/api/customer/upload-image",userGuard,upload.single("myfile"),customerController.uploadImage)
    app.post("/api/customer/login",customerController.login)
    app.put("/api/customer/update",userGuard,upload.single("myfile"),customerController.update)
    app.get("/api/customer/get-cart",userGuard,customerController.getCart)
    app.delete("/api/customer/delete/:id",userGuard,customerController.remove)
}

module.exports = customer
