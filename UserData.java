
package Modal;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author ABHISHEK KAREER
 */
@Entity
public class UserData {
    @Id
    private String Id;
    private String Name;
    private String Batch;
    private String Section;
    private String Stream;
    private String Cgpa;
    private String Status;

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getBatch() {
        return Batch;
    }

    public void setBatch(String Batch) {
        this.Batch = Batch;
    }

    public String getSection() {
        return Section;
    }

    public void setSection(String Section) {
        this.Section = Section;
    }

    public String getStream() {
        return Stream;
    }

    public void setStream(String Stream) {
        this.Stream = Stream;
    }

    public String getCgpa() {
        return Cgpa;
    }

    public void setCgpa(String Cgpa) {
        this.Cgpa = Cgpa;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }
}
