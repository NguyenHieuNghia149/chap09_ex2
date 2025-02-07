package murach.cart;

import java.io.*;
import java.util.ArrayList;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import murach.business.*;
import murach.data.*;
import jakarta.servlet.http.HttpServlet;

public class ProductsServlet  extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws IOException, ServletException {
        HttpSession session = request.getSession();

        String filePath = getServletContext().getRealPath("/WEB-INF/products.txt");
        System.out.println("File path: " + filePath); // In đường dẫn file

        ArrayList<Product> productList = ProductIO.getProducts(filePath);

        if(productList.isEmpty()) {
            session.setAttribute("message", "No products found");
        }

        session.setAttribute("productList", productList);


        String url = "/index.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);


    }
}
