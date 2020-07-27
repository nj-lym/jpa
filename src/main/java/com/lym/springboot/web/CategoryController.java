package com.lym.springboot.web;

import com.lym.springboot.dao.CategoryDAO;
import com.lym.springboot.pojo.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CategoryController
{
    @Autowired
    CategoryDAO categoryDAO;

    @RequestMapping("/listCategory")

    public String listCategory(Model m, @RequestParam(value = "start", defaultValue = "0") int start, @RequestParam(value = "size", defaultValue = "10") int size) throws
            Exception
    {


        start = start < 0 ? 0 : start;

        Pageable pageable = PageRequest.of(start, size, Sort.Direction.ASC, "empno");

    	Page<Category> page =categoryDAO.findAll(pageable);

        m.addAttribute("page", page);

        return "listCategory";
    }


    @RequestMapping("/addCategory")
    public String addCategory(Category c) throws Exception
    {
        categoryDAO.save(c);
        return "redirect:listCategory";
    }

    @RequestMapping("/deleteCategory")
    public String deleteCategory(Category c) throws Exception
    {
        categoryDAO.delete(c);
        return "redirect:listCategory";
    }

    @RequestMapping("/updateCategory")
    public String updateCategory(Category c) throws Exception
    {
        categoryDAO.save(c);
        return "redirect:listCategory";
    }

    @RequestMapping("/editCategory")
    public String ediitCategory(int empno, Model m) throws Exception
    {
        Category c = categoryDAO.getOne(empno);
        m.addAttribute("c", c);
        return "editCategory";
    }
    @RequestMapping("/toAdd")
    public String toAddCategory() throws Exception
    {
        return "add";
    }
}

