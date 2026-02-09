```mermaid
flowchart TD
    A[Trigger / Controller] --> B[TaskService]
    B --> C[TaskBuilder]
    C --> D[Prepared Task Records]
    D --> E[TaskFutureHandler]
    E --> F[DML Operations]