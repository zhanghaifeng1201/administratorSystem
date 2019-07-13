package com.org.controller;
import com.alibaba.fastjson.JSON;
import com.org.entity.InStock;
import com.org.service.InStockService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import us.codecraft.webmagic.selector.Json;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class InStockController {
    @Resource
    private InStockService inStockService;
    //更新数据

    /**
     *
     * @param id
     * @param number
     * @return
     */
    @RequestMapping(value = "upDate",method = RequestMethod.POST)
    @ResponseBody
    public int upDate(@RequestParam("id")int id,@RequestParam("number")Double number)
    {
        InStock inStock=inStockService.selectById(id);
        Double newnumber=inStock.getNumber()-number;
        inStock.setId(id);
        inStock.setNumber(newnumber);
       return inStockService.updateById(inStock);
    }
    @RequestMapping(value = "upDate_into",method = RequestMethod.POST)
    public String upDate_into(@RequestParam("id")int id,@RequestParam("userid")int userid,@RequestParam("number")Double number,Model model)
    {
        model.addAttribute("id",userid);
        InStock inStock=inStockService.selectById(id);
        Double newnumber=inStock.getNumber()+number;
        Double money=inStock.getMoney()+number*inStock.getPurchase_price();
        inStock.setId(id);
        inStock.setNumber(newnumber);
        inStock.setMoney(money);
        inStockService.updateById(inStock);
        return "index";
    }
    /**
     * 获取分页数据
     * @param start
     * @param size
     * @return
     */
    @RequestMapping(value = "getPageInformation",method = RequestMethod.POST)
    @ResponseBody
    public String  getPageInformation(@RequestParam("start")int start,@RequestParam("size")int size)
    {
        return JSON.toJSONString(inStockService.findByPage(start,size));
    }



    /**
     * 插入一条数据
     * @param userid
     * @param purchase_price
     * @param trade_price
     * @param retail_price
     * @param brand
     * @param item
     * @param goods_name
     * @param model_size
     * @param unit
     * @param des
     */
    @RequestMapping(value = "insertOneInStock",method = RequestMethod.POST)
    public String insertOne(@RequestParam("userid")int userid, @RequestParam("purchase_price")Double  purchase_price, @RequestParam("trade_price") Double trade_price, @RequestParam("retail_price")Double retail_price, @RequestParam("brand") String  brand, @RequestParam("item") String  item, @RequestParam("goods_name") String goods_name, @RequestParam("model_size")String model_size, @RequestParam("unit")String unit, @RequestParam("number")double number,@RequestParam("des") String des,Model model) {
        //我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        //获取String类型的时间
        String time = sdf.format(date);
        double money=purchase_price*number;
        InStock inStock = new InStock(userid, purchase_price, trade_price, retail_price, brand,item, goods_name,model_size ,unit,number, des ,time,money);
        model.addAttribute("id",userid);
        inStockService.insertOne(inStock);
        return "redirect:Inventory_check";
    }
    //查询单条数据

    /**
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "getInstock",method = RequestMethod.POST)
    @ResponseBody
    public String getInstock(@RequestParam("id")int id,HttpServletResponse response)
    {
        response.setHeader("Access-Control-Allow-Origin", "*");
        InStock one=inStockService.selectById(id);

            return JSON.toJSONString(one);
    }
    //查询所有库存

    /**
     *
     * @return
     */
    @RequestMapping(value = "selectAll",method = RequestMethod.POST)
    @ResponseBody
    public String selectAll()
    {
      List<InStock> inStocks=inStockService.selectList();
        return JSON.toJSONString(inStocks);
    }
}
