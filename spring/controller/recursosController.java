/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;
import model.Producte;
import model.Usuarios;
import model.UsuariosDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author aaron
 */
@Controller
@RequestMapping("/")
@SessionAttributes({"nombreLogin"})
public class recursosController {
    String nombreSesion;
    ArrayList<Usuarios> milista = new ArrayList<>();
    ArrayList<Producte> milista_producte = new ArrayList<>();
    
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
    
  @RequestMapping(value="logout",method=RequestMethod.GET)
    public RedirectView loginController(SessionStatus close){
        nombreSesion=null;
        close.setComplete();
        RedirectView rv = new RedirectView("login");
        return rv;
        
    }

    @RequestMapping(value="login", method=RequestMethod.POST) //asocio urls a metodos y asocio metodos a jsp.
    public String loginController(@ModelAttribute("usuarios") Usuarios usuarios , BindingResult result, Model model){ //EL bindingResult no puede ir al final de todo cuando está el model, pq es el model el que tiene que ir al final del todo. /@Valid @ModelAttribute("persona") Persona "con esto consigues decir que lo que recuperas es de tipo Persona"
      //El BindingResult sirve para que funcione la validación en el servidor.
      String redirectUrl="login";  
      if(result.hasErrors()){
          
      }else{
            
            for (int i = 0; i <=milista.size() -1; i++) {
             
         
         if (usuarios.getCorreo_usuario().equals(this.milista.get(i).getCorreo_usuario()) && usuarios.getPassword_usuario().equals(this.milista.get(i).getPassword_usuario())) {
             //JOptionPane.showMessageDialog(null,"Bien" );
             this.nombreSesion=usuarios.getCorreo_usuario();
             redirectUrl="tabla"; 
             break;
         }else{
            JOptionPane.showMessageDialog(null,"No se a encontrado el usuario" );
            break;
         }
         } 
    } 
      return "redirect:" + redirectUrl; //esto lo envia al index del controller, no a una jsp.
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
