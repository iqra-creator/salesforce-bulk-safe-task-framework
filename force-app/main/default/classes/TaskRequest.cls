/**
 * Author: Iqra Masood
 * Description: Represents a task creation request without DML
 */
public class TaskRequest {

    public Id relatedRecordId;
    public String subject;
    public String status;
    public Date activityDate;

    public TaskRequest(
        Id relatedRecordId,
        String subject,
        String status,
        Date activityDate
    ) {
        this.relatedRecordId = relatedRecordId;
        this.subject = subject;
        this.status = status;
        this.activityDate = activityDate;
    }
}
