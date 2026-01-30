/**
 * Author: Iqra Masood
 * Description: Trigger handler demonstrating bulk-safe usage
 */
public class TaskTriggerHandler {

    public static void afterInsert(List<SObject> records) {

        List<TaskRequest> requests = new List<TaskRequest>();

        for(SObject s : records) {

            requests.add(
                new TaskRequest(
                    s.Id,
                    'Follow-up Task',
                    'Not Started',
                    Date.today().addDays(1)
                )
            );
        }

        List<Task> tasks = TaskService.prepareTasks(requests);
        TaskFutureHandler.commitTasks(tasks);
    }
}
