/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */
package proyectosisexperrecetas;

import org.jpl7.Atom;
import org.jpl7.Query;
import org.jpl7.Term;
import org.jpl7.*;

/**
 *
 * @author Alfredo
 */
public class ProyectoSisExperRecetas {

    public static void main(String[] args) {

        System.out.println("Hello World!");

        Inicio inicio = new Inicio();

        String t1 = "consult('src/archivo.pl')";
        Query q1 = new Query(t1);
        System.out.println(t1 + " " + (q1.hasSolution() ? "verdadero" : "fallo")); 

        Variable X = new Variable("X");
        Variable X1 = new Variable("X1");

        Query q4
                = new Query(
                        "saludo",
                        new Term[]{new Atom("enrique"), X1}
                );

        java.util.Map<String, Term> solution;

        solution = q4.oneSolution();

        System.out.println("first solution of saludo(Xf)");
        System.out.println("X = " + solution.get("X"));
        System.out.println("first solution of saludo(Xf)");
        System.out.println("X = " + solution.get("X1"));
        
        String[] pasos = solution.get("X1").toString().split(",");
        
        /*for (String paso : pasos) {
            
            System.out.println(paso.replace(" ", "").replace("]","").replace("[",""));
        
        }*/
        
       

    }
}
