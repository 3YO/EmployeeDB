package web;

import java.util.ArrayList;

public interface EmployeeDao {
	public Employee getEmpById(int id);
    public ArrayList<Department> getDepartments();
    public void updateEmployee(Employee employee);
    public void addEmployee(Employee employee);
    public ArrayList<ArrayList> listEmployees();
    public ArrayList<ArrayList> getQuery(String sqltxt);
    public int update(String sqltxt);
	public void deleteEmployee(Employee emp);
}
