package com.email.test;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

@WebServlet(name = "EmailAttachment", urlPatterns = {"/EmailAttachment"})
public class EmailAttachment extends HttpServlet {

    public static final String UPLOAD_DIR = "resources";
    PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            out = response.getWriter();
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String post = request.getParameter("post");
            String phone = request.getParameter("phone");
            String comment = request.getParameter("message");
            Part part = request.getPart("resume");
            String fileName = extractFileName(part);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String date = sdf.format(new Date());

            if (!fileName.equals("") || !fileName.isEmpty()) {
                System.out.println("in if");
                String applicationPath = getServletContext().getRealPath("");
                String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
                System.out.println("applicationPath:" + applicationPath);
                File fileUploadDirectory = new File(uploadPath);
                if (!fileUploadDirectory.exists()) {
                    fileUploadDirectory.mkdirs();
                }
                String savePath = uploadPath + File.separator + fileName;
                System.out.println("savePath: " + savePath);
                part.write(savePath + File.separator);
                File fileSaveDir1 = new File(savePath);
                part.write(savePath + File.separator);
                final String username = "";//your email here
                final String password = "";//your password here
                Properties props = new Properties();
                props.put("mail.smtp.auth", true);
                props.put("mail.smtp.starttls.enable", true);
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");
                Session session = Session.getInstance(props, new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
                try {
                    Message message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(email));
                    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(username));
                    MimeBodyPart textPart = new MimeBodyPart();
                    MimeBodyPart htmlPart = new MimeBodyPart();
                    MimeBodyPart messageBodyPart = new MimeBodyPart();
                    Multipart multipart = new MimeMultipart();
                    DataSource source = new FileDataSource(savePath);
                    messageBodyPart.setDataHandler(new DataHandler(source));
                    messageBodyPart.setFileName(fileName);
                    multipart.addBodyPart(messageBodyPart);
                    String final_Text = "Name: " + name + "    " + "Email: " + email + "    " + "Post: " + post + "Phone: " + phone + "Comment: " + comment;
                    textPart.setText(final_Text);
                    htmlPart.setContent("<a href='mailto:" + email + "'>Reply</a><br>", "text/html");
                    multipart.addBodyPart(htmlPart);
                    message.setSubject("Carrier Details: " + date);
                    multipart.addBodyPart(textPart);
                    message.setContent(multipart);
                    Transport.send(message);
                    HttpSession ss = request.getSession();
                    ss.setAttribute("msg", "Thank you " + name + ", your message has been submitted to us.");
                    response.sendRedirect("index.jsp");
                } catch (Exception e) {
                    out.println(e);
                }

            } else {
                out.println("no file choosen....");
            }
        } catch (Exception e) {
            out.println(e);
        }
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

}
