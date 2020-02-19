/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;
import model.Producte;
import model.Usuarios;
import model.UsuariosDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author aaron
 */
@Controller
public class recursosController {
    
    UsuariosDAO usuariosdao=new UsuariosDAO();
    
    @RequestMapping(value="index",method=RequestMethod.GET)
    public String indexController(Model model){
        return "index";
    }
    
    @RequestMapping(value="login",method=RequestMethod.GET)
    public String loginController(Model model){
        Usuarios usuarios=new Usuarios();
        model.addAttribute("usuarios", usuarios);
        return "login";
        
    }
    
    @RequestMapping(value="login",method=RequestMethod.POST)
    public String loginPOSTController(Model model){
        Usuarios usuarios=new Usuarios();
        return "redirect: tabla";
    }
    
    @RequestMapping(value="tabla",method=RequestMethod.GET)
    public String tablaController(Model model){
        Usuarios usuarios=new Usuarios();
        model.addAttribute("usuarios", usuarios);
        return "tabla";
        
    }
    
    @RequestMapping(value="insertar",method=RequestMethod.GET)
    public String insertarController(Model model){
        Usuarios usuarios=new Usuarios();
        model.addAttribute("usuarios", usuarios);
        return "insertar";
        
    }
    
     @RequestMapping(value="insertar",method=RequestMethod.POST)
    public String anadirController(Model model,@ModelAttribute("usuarios") Usuarios usuarios, HttpServletRequest request){
        
            //recuperar los valore del formulario
            /*String nom=request.getParameter("nom");
            String raza=request.getParameter("raza");
            String pais=request.getParameter("pais");
            String edat=request.getParameter("edat");
            int edad=Integer.valueOf(edat);*/
            
            //Construir la clase Primera Forma
           /* Animal animal=new Animal();
            animal.setNom(nom);;
            animal.setRaza(raza);
            animal.setPais(pais);
            animal.setEdat(Integer.valueOf(edat));*/
            
            //Construir la clase Segunda Forma
            //Animal animal2=new  Animal(nom,raza,pais,edad);
             //Llamar a animaldao para insertar
             usuariosdao.insertarUsuario(usuarios);
            //model.addAttribute("nombre", nom);
            
            String redirectUrl="tabla";
            return "redirect:"+redirectUrl;
            //redirect "redirect:index";
    }
    
    
    @RequestMapping(value="myajax",method=RequestMethod.GET)
    public @ResponseBody String myAjaxController(@RequestParam("email") String email){
        //JOptionPane.showMessageDialog(null,"He llegado");
        
        if (email.equals("")) {
            return "Introduce un correo";
        }else{
            return "";
        }
    }

    
    @RequestMapping(value="myajax1",method=RequestMethod.GET)
    public @ResponseBody String myAjax1Controller(@RequestParam("pass") String pass){
        //JOptionPane.showMessageDialog(null,"He llegado");
        
        if (pass.equals("")) {
            return "Introduce una contraseña";
        }else{
            return "";
        }
    }
    
    
    
    @RequestMapping(value="insertar_producto",method=RequestMethod.GET)
    public String insertProductoController(Model model){
        Producte producte=new Producte();
        model.addAttribute("producte", producte);
        return "insertar_producto";
        
    }

}
