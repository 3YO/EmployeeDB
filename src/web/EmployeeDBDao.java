package web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;

public class EmployeeDBDao implements EmployeeDao {
	private final String URL = "jdbc:mysql://localhost:3306/companydb";
	private final String USER = "student";
	private final String PASSWORD = "student";
	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private Connection conn;
	private Statement stmt;
	static int uc = 0;

	public ArrayList<ArrayList> getQuery(String sqltxt) {
		ArrayList<ArrayList> arrayList1 = new ArrayList<>();
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sqltxt);
			ResultSetMetaData rsmd = rs.getMetaData();
			ArrayList<String> list = new ArrayList<>();

			for (int i = 1; i <= rsmd.getColumnCount(); i++) {
				list.add(rsmd.getColumnName(i));
			}
			arrayList1.add(list);

			while (rs.next()) {
				ArrayList<String> arrayList2 = new ArrayList<>();

				for (int i = 1; i <= rsmd.getColumnCount(); i++) {
					arrayList2.add(rs.getString(i));
				}
				arrayList1.add(arrayList2);
			}
			rs.close();
			stmt.close();
			conn.close();

		} catch (Exception e) {
			System.err.println(e);
		} finally {
			return arrayList1;
		}
	}

	public int update(String sqltxt) {
		// int uc = 0;
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			stmt = conn.createStatement();
			uc = stmt.executeUpdate(sqltxt);

			stmt.close();
			conn.close();
			return uc;
		} catch (Exception e) {
			System.err.println(e);
			return uc;
		}
	}

	@Override
	public Employee getEmpById(int id) {
		Employee emp = null;
		String sql = "SELECT id, firstname, middlename, lastname, gender, salary, department_id, job_id, address, city, state, zipcode FROM employees WHERE id = "
				+ id;

		try {
			Class.forName(JDBC_DRIVER); // add this so MVC can find the driver
			Connection conn = DriverManager.getConnection(URL, "student", "student");
			Statement statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next()) {
				emp = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10), rs.getString(11),
						rs.getInt(12));

				rs.close();
				statement.close();
				conn.close();

			}
		} catch (Exception e) {
			System.err.println(e);
		}
		return emp;
	}

	@Override
	public ArrayList<Department> getDepartments() {
		ArrayList<Department> depts = new ArrayList<>();
		String sql = "SELECT id, name, manager_id, location_id FROM departments ORDER BY name";

		try {
			Class.forName(JDBC_DRIVER); // add this so MVC can find the driver
			Connection conn = DriverManager.getConnection(URL, "student", "student");
			Statement statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {

				Department d = new Department(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4));
				depts.add(d);
			}

			rs.close();
			statement.close();
			conn.close();

		} catch (Exception e) {
			System.err.println(e);
		}
		return depts;
	}

	@Override
	public ArrayList<ArrayList> listEmployees() {
		ArrayList<ArrayList> arrayList1 = new ArrayList<>();
		String sql = "SELECT id, firstname, lastname, gender, salary, department_id, job_id FROM employees ORDER BY id";

		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			ResultSetMetaData rsmd = rs.getMetaData();
			ArrayList<String> list = new ArrayList<>();

			for (int i = 1; i <= rsmd.getColumnCount(); i++) {
				list.add(rsmd.getColumnName(i));
			}
			arrayList1.add(list);

			while (rs.next()) {
				ArrayList<String> arrayList2 = new ArrayList<>();

				for (int i = 1; i <= rsmd.getColumnCount(); i++) {
					arrayList2.add(rs.getString(i));
				}
				arrayList1.add(arrayList2);
			}
			rs.close();
			stmt.close();
			conn.close();

		} catch (Exception e) {
			System.err.println(e);
		} finally {
			return arrayList1;
		}
	}

	public void deleteEmployee(Employee emp) {

		String sqltxt = "DELETE FROM employees WHERE id=" + emp.getId() + ";";
		update(sqltxt);
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			stmt = conn.createStatement();
			System.out.println("before update");
			uc = stmt.executeUpdate(sqltxt);
			System.out.println("after update");

			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.err.println(e);
		}
	}

	@Override
	public void updateEmployee(Employee emp) {
		String sql = "UPDATE employees SET firstname= '" + emp.getFirstname() + "', middlename= '" + emp.getMiddlename()
				+ "', lastname= '" + emp.getLastname() + "', gender= '" + emp.getGender() + "', salary= '"
				+ emp.getSalary() + "', department_id= '" + emp.getDepartment_id() + "' , job_id= '" + emp.getJob_id()
				+ "', address= '" + emp.getAddress() + "', city= '" + emp.getCity() + "', zipcode= " + emp.getZipcode()
				+ " WHERE id =" + emp.getId();
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			stmt = conn.createStatement();
			System.out.println("before update");
			uc = stmt.executeUpdate(sql);
			System.out.println("after update");

			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.err.println(e);
		}
	}

	@Override
	public void addEmployee(Employee employee) {

		System.out.println("before add statement");
		String sql = "INSERT INTO employees (firstname, middlename, lastname, gender, salary, department_id, job_id, address, city, state, zipcode) VALUES ('"
				+ employee.getFirstname() + "', '" + employee.getMiddlename() + "', '" + employee.getLastname() + "', '"
				+ employee.getGender() + "', " + employee.getSalary() + ", " + employee.getDepartment_id() + ", "
				+ employee.getJob_id() + ", '" + employee.getAddress() + "', '" + employee.getCity() + "', '"
				+ employee.getState() + "', " + employee.getZipcode() + ");";
		System.out.println("after add statement");

		System.out.println(employee.getGender());
		System.out.println(
				"INSERT INTO employees (firstname, middlename, lastname, gender, salary, department_id, job_id, address, city, state, zipcode) VALUES ('"
						+ employee.getFirstname() + "', '" + employee.getMiddlename() + "', '" + employee.getLastname()
						+ "', '" + employee.getGender() + "', " + employee.getSalary() + ", "
						+ employee.getDepartment_id() + ", " + employee.getJob_id() + ", '" + employee.getAddress()
						+ "', '" + employee.getCity() + "', '" + employee.getState() + "', " + employee.getZipcode()
						+ ");");
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			stmt = conn.createStatement();
			;
			uc = stmt.executeUpdate(sql);

			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.err.println(e);
		}
	}

}
