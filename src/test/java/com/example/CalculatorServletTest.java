package com.example;

import org.junit.Test;
import org.mockito.Mockito;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

import static org.mockito.Mockito.*;

public class CalculatorServletTest {

    @Test
    public void testDoGetAddition() throws Exception {
        CalculatorServlet servlet = new CalculatorServlet();
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
        PrintWriter writer = new PrintWriter(System.out);

        when(request.getParameter("operation")).thenReturn("add");
        when(request.getParameter("num1")).thenReturn("5");
        when(request.getParameter("num2")).thenReturn("3");
        when(response.getWriter()).thenReturn(writer);

        servlet.doGet(request, response);

        writer.flush();
        // You can add assertions here to verify the output
    }


    @Test
    public void testDoGetDivisionByZero() throws Exception {
        CalculatorServlet servlet = new CalculatorServlet();
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
        PrintWriter writer = new PrintWriter(System.out);

        when(request.getParameter("operation")).thenReturn("divide");
        when(request.getParameter("num1")).thenReturn("5");
        when(request.getParameter("num2")).thenReturn("0");
        when(response.getWriter()).thenReturn(writer);

        servlet.doGet(request, response);

        writer.flush();
        // You can add assertions
    }
}