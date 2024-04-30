const cds = require('@sap/cds');
class ScpCloudService extends cds.ApplicationService{
    async init(){
        console.log('abc')
        const {salesorder} = this.entities;
        const orders =  await cds.connect.to('salesorder');
        this.on('READ',salesorder,async (req,res)=>{
            return await orders.tx(req).run(req.query);
        });
        const {Requests} = this.entities;
        this.on('READ', Requests, async (req) => {
            const tx = cds.transaction(req);
            const results = await tx.run(req.query);
            return results;
        });
        const {RequestTypes} = this.entities;
        this.on('READ', RequestTypes, async (req) => {
            const tx = cds.transaction(req);
            const results = await tx.run(req.query);
            return results;
        });
        const {Regions} = this.entities;
        this.on('READ', Regions, async (req) => {
            const tx = cds.transaction(req);
            const results = await tx.run(req.query);
            return results;
        });
        const {CountryCodes} = this.entities;
        this.on('READ', CountryCodes, async (req) => {
            const tx = cds.transaction(req);
            const results = await tx.run(req.query);
            return results;
        });
        const {Priorities} = this.entities;
        this.on('READ', Priorities, async (req) => {
            const tx = cds.transaction(req);
            const results = await tx.run(req.query);
            return results;
        });

    }
}
module.exports = {ScpCloudService}