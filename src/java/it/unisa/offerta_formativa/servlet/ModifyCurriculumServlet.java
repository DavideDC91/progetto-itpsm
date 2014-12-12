package it.unisa.offerta_formativa.servlet;

import it.unisa.offerta_formativa.beans.Curriculum;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.offerta_formativa.manager.CurriculumManager;
import it.unisa.offerta_formativa.manager.DegreeManager;



/**
 * Servlet implementation class Servlet
 */
@WebServlet("/ModifyCurriculumServlet")
public class ModifyCurriculumServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private CurriculumManager cuMng;
    private DegreeManager deMng;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyCurriculumServlet() {
        super();
        // TODO Auto-generated constructor stub   
        cuMng = CurriculumManager.getInstance();
        deMng = DegreeManager.getInstance();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doPost(request, response);
    }

    private Curriculum GetCurriculum(String matricula) {
        // TODO Auto-generated method stub
            return cuMng.readCurriculum(matricula);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setAttribute("curriculum",GetCurriculum(request.getParameter("curriculum_matricula")));
        request.setAttribute("degrees",deMng.getAllDegrees());
        request.getRequestDispatcher("/offertaFormativaJSP/amministratore/ModifyCurriculum.jsp").forward(request, response);
    }

}