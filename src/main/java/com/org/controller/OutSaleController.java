package com.org.controller;
import com.alibaba.fastjson.JSON;
import com.org.dao.UserDao;
import com.org.entity.InStock;
import com.org.entity.OutSale;
import com.org.entity.User;
import com.org.service.InStockService;
import com.org.service.OutSaleService;
import com.org.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class OutSaleController {
    @Resource
    private OutSaleService outSaleService;
    @Resource
    private InStockService inStockService;
    @Resource
    private UserService userService;
    //查询所有库存
    /**
     *
     * @return
     */
    @RequestMapping(value = "selectallSale",method = RequestMethod.POST)
    @ResponseBody
    public String selectallSale()
    {
        List<OutSale> outSales=outSaleService.selectList();
        return JSON.toJSONString(outSales);
    }

    /**
     * 出库
     * @param id
     * @param userid
     * @param out_name
     * @param out_brand
     * @param model_size
     * @param out_price
     * @param along_to
     * @param out_number
     * @param out_unit
     * @param client
     * @param out_des
     * @param model
     * @return
     */
    @RequestMapping("insertOneOutSale")
    public String insertOne(@RequestParam("id")int id, @RequestParam("userid")int userid, @RequestParam("out_name")String  out_name, @RequestParam("out_brand") String out_brand, @RequestParam("model_size")String model_size, @RequestParam("out_price") Double  out_price, @RequestParam("along_to") String along_to, @RequestParam("out_number")int out_number, @RequestParam("out_unit")String out_unit,@RequestParam("client")String client, @RequestParam("out_des")String out_des, Model model) {
        //入库表数量减少
        InStock inStock=inStockService.selectById(id);
        Double inprice=inStock.getPurchase_price();
        double inmoney=inprice*out_number;
        double newnumber=inStock.getNumber()-out_number;
        inStock.setId(id);
        inStock.setNumber(newnumber);
       // System.out.println(newnumber);
        int i=inStockService.updateById(inStock);
        User user=userService.selectByPrimaryKey(userid);
        String username=user.getUsername();
        if(i>0) {
            //我要获取当前的日期
            Date date = new Date();
            //设置要获取到什么样的时间
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            //获取String类型的时间
            String time = sdf.format(date);
            double money=out_price*out_number;
            double profit=money-inmoney;
            OutSale outSale = new OutSale(id, username, out_name, out_brand, model_size, out_price, along_to, out_number, client, out_unit, time, money, profit, out_des);
            // System.out.print(outSale.toString());
            outSaleService.insertOne(outSale);
            model.addAttribute("id", userid);
            return "redirect:Out_of_stock";
        }else {
            return "error";
        }
    }
}
