package Servlet;

public class Sturent {
    int id;
    String name;
    String company;
    int salary;

    // getter and setter are must to be used in jsp file.

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Sturent{");
        sb.append("id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", company=").append(company);
        sb.append(", salary=").append(salary);
        sb.append('}');
        return sb.toString();
    }

}
