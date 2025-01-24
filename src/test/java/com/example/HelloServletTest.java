package com.example;

import org.junit.Test;
import org.mockito.Mockito;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

import static org.mockito.Mockito.*;

public class HelloServletTest {

    @Test
    public void testDoGet() throws Exception {
        HelloServlet servlet = new HelloServlet();
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
        PrintWriter writer = new PrintWriter(System.out);

        when(response.getWriter()).thenReturn(writer);
        servlet.doGet(request, response);

        writer.flush();
        // You can add assertions here to verify the output
    }
}