/**
 * Author: Iqra Masood
 * Description: Handles async DML operations for Tasks
 */
public class TaskFutureHandler {

    @future
    public static void commitTasks(List<Task> tasks) {

        if(tasks == null || tasks.isEmpty()) {
            return;
        }

        try {
            insert tasks;
        } catch (DmlException e) {
            System.debug('Task insert failed: ' + e.getMessage());
        }
    }
}
