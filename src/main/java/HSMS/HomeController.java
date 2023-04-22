/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package HSMS;

import com.mycompany.string_class.SendEmail;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Yash
 */
@Controller()
public class HomeController {

    UserDetails ud = new UserDetails();
    logins ld = new logins();
    maintainance mb = new maintainance();
    SendEmail se= new SendEmail();
    
    
    @RequestMapping("home")
    public String home(Model m) {
//        String x="yash";
//        x="y";
//        m.addAttribute("name",x);
        return "home";
    }

    @RequestMapping("registerpage")
    public String registerpage(
            Map<String, Object> ob1
    ) {

        ob1.put("ud1", ud);

        System.out.println("in register");
        return "register";
    }

    @RequestMapping(value = "registerpage_next", method = RequestMethod.POST)
    public String createsociety(
            @ModelAttribute("ud1") UserDetails udm,
            Map<String, Object> model
    ) {
        System.out.println("in next");

        System.out.println(udm.age + udm.city + udm.username + udm.password);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS?characterEncoding=utf8", "root", "root");

            System.out.println("adding in database");

            PreparedStatement stmt1 = con.prepareStatement("SELECT * FROM USERDETAILS ORDER BY ID DESC LIMIT 1");
            int n = 0;
            ResultSet rs = stmt1.executeQuery();
            while (rs.next()) {

                n = rs.getInt("ID");
            }
            int j = n + 1;
            PreparedStatement stmt = con.prepareStatement("INSERT INTO USERDETAILS VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

            System.out.println(udm.role + "  " + j + udm.city + udm.dob + udm.username + udm.flatno+"emials: "+udm.email);

            if (udm.role.equals("Admin")) {
                System.out.println("admins");
                stmt.setString(1, udm.role);
                stmt.setString(2, udm.sname);
                stmt.setInt(3, j);
                stmt.setString(4, udm.gender);
                stmt.setString(5,udm.martial);//1 specifies the first parameter in the query  
                stmt.setString(6, udm.fname);//1 specifies the first parameter in the query  
                stmt.setString(7, udm.lname);
                stmt.setString(8, udm.dob);//1 specifies the first parameter in the query  
                stmt.setString(9, udm.age);
                stmt.setString(10, udm.city);
                stmt.setString(11, udm.district);
                stmt.setString(12, udm.state);
                stmt.setString(13, udm.pincode);
                stmt.setString(14, udm.username);
                stmt.setString(15, udm.password);
                stmt.setString(16, udm.mname);
                stmt.setString(17, udm.ascode);
                stmt.setString(18, udm.flatno);
                stmt.setString(19, udm.email);
                 stmt.executeUpdate();                
                 se.mailing("yashwant.gavali@mitaoe.ac.in", "mitaoe*yash", "yashwant.gavali@mitaoe.ac.in", udm.email,udm.fname,udm.username,1);
                 
                return "home";
            } else {
                System.out.println("in else");
                PreparedStatement stmt3 = con.prepareStatement("SELECT * FROM USERDETAILS WHERE ROLE='Admin' and scode=?");
                stmt3.setString(1, udm.mscode);
                ResultSet rs3 = stmt3.executeQuery();
                int f = 0;
                System.out.println(udm.mscode);
                String scode = null,sn=null;
                while (rs3.next()) {
                    scode = rs3.getString("scode");
                    sn=rs3.getString("sname");
                }

                System.out.println(scode);
                if (scode.equals(udm.mscode)) {
                    System.out.println("found scode");
                System.out.println("members");
                stmt.setString(1, udm.role);
                stmt.setString(2, sn);
                stmt.setInt(3, j);
                stmt.setString(4, udm.gender);
                stmt.setString(5,udm.martial);//1 specifies the first parameter in the query  
                stmt.setString(6, udm.fname);//1 specifies the first parameter in the query  
                stmt.setString(7, udm.lname);
                stmt.setString(8, udm.dob);//1 specifies the first parameter in the query  
                stmt.setString(9, udm.age);
                stmt.setString(10, udm.city);
                stmt.setString(11, udm.district);
                stmt.setString(12, udm.state);
                stmt.setString(13, udm.pincode);
                stmt.setString(14, udm.username);
                stmt.setString(15, udm.password);
                stmt.setString(16, udm.mname);
                stmt.setString(17, udm.mscode);
                stmt.setString(18, udm.flatno);
                stmt.setString(19, udm.email);
                stmt.executeUpdate();
                se.mailing("yashwant.gavali@mitaoe.ac.in", "mitaoe*yash", "yashwant.gavali@mitaoe.ac.in", udm.email,udm.fname,udm.username,0);
                    return "home";
                } else {
                    System.out.println("not found scode");
                    return "invalidscode";
                }
            }


        } catch (Exception e) {
        }
        return "invalidscode";
    }

    @RequestMapping("adminlogin")
    public String adminlogin(
            @RequestParam("auser") String x,
            @RequestParam("apass") String y,
            @RequestParam("scode") String z,
            Model m
    ) {
        try {
            System.out.println("reached to register proccessing");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS?characterEncoding=utf8", "root", "root");
            System.out.println(x + y + z);
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM USERDETAILS WHERE ROLE='Admin' AND USERNAME=? AND PASSWORD=? and scode=?");

            stmt.setString(1, x);
            stmt.setString(2, y);
            stmt.setString(3, z);
            int n = 0;
            String user = null, pass = null, sc = null;
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                user = rs.getString("USERNAME");
                pass = rs.getString("PASSWORD");
                sc = rs.getString("scode");
                n = rs.getInt("ID");
            }

            if (x.equals(user)) {
                if (y.equals(pass)) {
                    if (z.equals(sc)) {
                        ld.username = user;
                        ld.password = pass;
                        ld.scode = sc;
                        ld.role = "Admin";
                        m.addAttribute("user", user);
                        m.addAttribute("un", user);
                        m.addAttribute("scode", sc);
                        m.addAttribute("userid", n);
                        return "admin/dashboard";
                    }
                }
            }

            stmt.executeUpdate();
        } catch (Exception e) {
        }
        return "login_error";
    }

    @RequestMapping("memberlogin")
    public String memberlogin(
            @RequestParam("muser") String x,
            @RequestParam("mpass") String y,
            @RequestParam("scode") String z,
            Model m
    ) {
        try {
            System.out.println("reached to register proccessing");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS?characterEncoding=utf8", "root", "root");

            PreparedStatement stmt = con.prepareStatement("SELECT * FROM USERDETAILS WHERE ROLE='Member' AND USERNAME=? AND PASSWORD=? and scode=?");

            stmt.setString(1, x);
            stmt.setString(2, y);
            stmt.setString(3, z);
            int n = 0;
            String user = null, pass = null, sc = null;
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                user = rs.getString("USERNAME");
                pass = rs.getString("PASSWORD");
                sc = rs.getString("scode");
                n = rs.getInt("ID");
            }

            if (x.equals(user)) {
                if (y.equals(pass)) {
                    if (z.equals(sc)) {
                        ld.username = user;
                        ld.password = pass;
                        ld.scode = sc;
                        ld.role = "Member";
                        m.addAttribute("userid", n);
                        m.addAttribute("user", user);
                        m.addAttribute("un", user);
                        m.addAttribute("scode", sc);
                        return "member/dashboard";
                    }
                }

            }

            stmt.executeUpdate();
        } catch (Exception e) {
        }
        return "login_error";
    }

//    admin dashboard
    @RequestMapping("admin_members")
    public String admin_members(
            @RequestParam("id") int n,
            Model m
    ) {
        System.out.println(ud.age + ud.fname + ud.mname);
        m.addAttribute("userid", n);
        m.addAttribute("scode", ld.scode);
        m.addAttribute("un", ld.username);
        m.addAttribute("user", ld.username);
        return "admin/members";
    }

    @RequestMapping("admin_home")
    public String admin_home(
            @RequestParam("id") int n,
            Model m
    ) {
        System.out.println(ud.age + ud.fname + ud.mname);
        m.addAttribute("userid", n);
        m.addAttribute("un", ld.username);
                        m.addAttribute("user", ld.username);
                        m.addAttribute("scode", ld.scode);
        return "admin/dashboard";
    }

    @RequestMapping("admin_payments")
    public String admin_payments(
            Map<String, Object> ob1,
            @RequestParam("id") int n,
            Model m
    ) {
        System.out.println(ud.age + ud.fname + ud.mname);
        m.addAttribute("userid", n);
        m.addAttribute("scode", ld.scode);
        m.addAttribute("un", ld.username);
        System.out.println("username: " + ld.username);
        ob1.put("mb1", mb);

        return "admin/payments";
    }

    @RequestMapping("lightbilladd")
    public String lightbilladd(
            @RequestParam("id") int n,
            @RequestParam("flatno") String fn,
            @RequestParam("lightbill") int lb,
            @RequestParam("duedate") String date,
            @RequestParam("desc") String des,
            Model m
    ) {
        m.addAttribute("userid", n);
        m.addAttribute("res", "yash");
        m.addAttribute("un", ld.username);
        System.out.println("Adding lightbill");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS?characterEncoding=utf8", "root", "root");

            System.out.println("if fn lb due scode"+n+fn+lb+date+ld.scode);

            PreparedStatement stmt1 = con.prepareStatement("SELECT * FROM USERDETAILS WHERE FLATNO=? and SCODE=?;");
            stmt1.setString(1, fn);
            stmt1.setString(2, ld.scode);
            String user = null,flat=null,em=null;
            int pid=-1;
            ResultSet rs = stmt1.executeQuery();
            while (rs.next()) {
                user = rs.getString("USERNAME");
                flat = rs.getString("FLATNO");
                pid = rs.getInt("ID");
            }
            System.out.println("falt:user:scode "+flat+user+ld.scode);

            if(flat.equals(fn)){
                System.out.println("in if fn");
                PreparedStatement stmt3 = con.prepareStatement("INSERT INTO LIGHTBILL VALUES(?,?,?,?,?,?,?,?)");
                stmt3.setInt(1, pid);
                stmt3.setString(2, flat);
                stmt3.setString(3, user);
                stmt3.setInt(4, lb);
                stmt3.setString(5, ld.scode);
                stmt3.setString(6, date);
                stmt3.setString(7, "INCOMPLETE");
                stmt3.setString(8, des);

                stmt3.executeUpdate();
                
                
                m.addAttribute("res", "true");
                return "admin/payments";
            }
            else{
                System.out.println("else");
                m.addAttribute("res", "false");
                return "admin/payments";
            }
        } catch (Exception e) {
        }
        return "admin/payments";
    }

    @RequestMapping("maintainancebill")
    public String maintainancebill(
            @RequestParam("id") int n,
            @ModelAttribute("mb1") maintainance mba,
            Model m
    ) {
        m.addAttribute("userid", n);
        m.addAttribute("un", ld.username);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS?characterEncoding=utf8", "root", "root");
            System.out.println("maintainace scode" + ld.scode);
            PreparedStatement stmt1 = con.prepareStatement("SELECT * FROM maintainance where scode=?");
            stmt1.setString(1, ld.scode);
            ResultSet rs = stmt1.executeQuery();
            String scode = null;
            int f = 0;
            System.out.println(mba.clean);
            int tot = mba.general + mba.water + mba.electricity + mba.muncipal + mba.clean + mba.parking + mba.lift;
            System.out.println("total=" + tot);
            while (rs.next()) {
                scode = rs.getString("SCODE");
                System.out.println(scode);

            }
            if (scode == null) {

                PreparedStatement stmt3 = con.prepareStatement("INSERT INTO maintainance VALUES(?,?,?,?,?,?,?,?,?)");
                stmt3.setInt(1, mba.general);
                stmt3.setInt(2, mba.water);
                stmt3.setInt(3, mba.muncipal);
                stmt3.setInt(4, mba.clean);
                stmt3.setInt(5, mba.electricity);
                stmt3.setInt(6, mba.parking);
                stmt3.setInt(7, mba.lift);
                stmt3.setInt(8, tot);
                stmt3.setString(9, ld.scode);

                stmt3.executeUpdate();
            } else {

                PreparedStatement stmt2 = con.prepareStatement("UPDATE MAINTAINANCE SET GENERAL=?,WATER=?,MUNCIPAL=?,CLEAN=?,ELECTRICITY=?,PARKING=?,LIFT=?,TOTAL=? where SCODE=?;");
                stmt2.setInt(1, mba.general);
                stmt2.setInt(2, mba.water);
                stmt2.setInt(3, mba.muncipal);
                stmt2.setInt(4, mba.clean);
                stmt2.setInt(5, mba.electricity);
                stmt2.setInt(6, mba.parking);
                stmt2.setInt(7, mba.lift);
                stmt2.setInt(8, tot);
                stmt2.setString(9, ld.scode);
                stmt2.executeUpdate();
                System.out.println("total=" + tot);
            }
        } catch (Exception e) {
        }
        return "admin/payments";
    }

    @RequestMapping("/signout")
    public String signout(
            @RequestParam("id") int n,
            Model m
    ) {
        System.out.println(ud.age + ud.fname + ud.mname);
        m.addAttribute("userid", n);
        return "home";
    }
    
    @RequestMapping("admin_announcement")
    public String admin_announcement(
            @RequestParam("id") int n,
            Model m
    ){
        m.addAttribute("userid", n);
        m.addAttribute("un", ld.username);
        return "admin/announcement";
    }
    
    @RequestMapping("announced")
    public String announced(
            @RequestParam("id") int n,
            @RequestParam("sub") String sub,
            @RequestParam("message") String mes,
            Model m
    ){
        System.out.println("sub:mes "+sub+mes);
        m.addAttribute("un", ld.username);
        
        m.addAttribute("userid", n);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS?characterEncoding=utf8", "root", "root");
            System.out.println("maintainace scode" + ld.scode);
            PreparedStatement stmt1 = con.prepareStatement("INSERT INTO ANNOUNCEMENT VALUES(?,?,?,?,?)");
            stmt1.setInt(1, n);
            stmt1.setString(2, ld.username);
            stmt1.setString(3, sub);
            stmt1.setString(4, mes);
            stmt1.setString(5, ld.scode);
            stmt1.executeUpdate();
        } catch (Exception e) {
        }
        return "admin/announcement";
    }
    
    
    
    
    
    
    
    
//    MEMBERS DASHBOARD
    
    @RequestMapping("member_members")
    public String member_members(
            @RequestParam("id") int n,
            Model m
    ){
        m.addAttribute("userid", n);
        m.addAttribute("scode", ld.scode);
        m.addAttribute("un", ld.username);
        return "member/members";
    }
    
    @RequestMapping("member_home")
    public String member_home(
            @RequestParam("id") int n,
            Model m
    ){
        
            System.out.println("username: "+ld.username);
            System.out.println("soced: "+ld.scode);
            System.out.println("pass: "+ld.password);
        m.addAttribute("un", ld.username);
            System.out.println("role: "+ld.role);
            m.addAttribute("userid", n);
                        m.addAttribute("user", ld.username);
                        m.addAttribute("scode", ld.scode);
        m.addAttribute("userid", n);
        return "member/dashboard";
    }
    
    @RequestMapping("member_payments")
    public String member_payments(
            @RequestParam("id") int n,
            Model m
    ){
        m.addAttribute("scode",ld.scode);
        m.addAttribute("un", ld.username);
        m.addAttribute("user",ld.username);
        m.addAttribute("userid", n);
        return "member/payments";
    }
    
    @RequestMapping("member_announcement")
    public String member_announcement(
            @RequestParam("id") int n,
            Model m
    ){
        m.addAttribute("scode",ld.scode);
        m.addAttribute("un", ld.username);
        m.addAttribute("user",ld.username);
        m.addAttribute("userid", n);
        return "member/announcement";
    }
}
