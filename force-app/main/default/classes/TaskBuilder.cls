/**
 * Author: Iqra Masood
 * Description: Builds Task records from TaskRequest objects
 */
public class TaskBuilder {

    public static List<Task> build(List<TaskRequest> requests) {

        List<Task> tasks = new List<Task>();

        for(TaskRequest req : requests) {

            Task t = new Task();
            t.WhatId = req.relatedRecordId;
            t.Subject = req.subject;
            t.Status = req.status;
            t.ActivityDate = req.activityDate;

            tasks.add(t);
        }

        return tasks;
    }
}
