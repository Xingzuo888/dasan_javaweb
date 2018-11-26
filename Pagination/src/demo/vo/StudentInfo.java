package demo.vo;

public class StudentInfo {
    private int id;
    private String sno;
    private String sname;
    private char sex;
    private int age;
    private String pf;
    public StudentInfo(){}
    public StudentInfo(String sno, String sname,
                       char sex, int age, String pf){
        this.sex = sex;
        this.sno = sno;
        this.sname = sname;
        this.pf = pf;
        this.age = age;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPf() {
        return pf;
    }

    public void setPf(String pf) {
        this.pf = pf;
    }
}
