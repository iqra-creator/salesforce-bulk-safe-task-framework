/**
 * Author: Iqra Masood
 * Description: Applies business rules to Task creation
 */
public class TaskService {

    public static List<Task> prepareTasks(List<TaskRequest> requests) {

        if(requests.isEmpty()) {
            return new List<Task>();
        }

        List<Task> tasks = TaskBuilder.build(requests);

        for(Task t : tasks) {
            if(String.isBlank(t.Status)) {
                t.Status = 'Not Started';
            }
        }

        return tasks;
    }
}
