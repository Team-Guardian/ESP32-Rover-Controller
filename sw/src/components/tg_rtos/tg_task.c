/**
 * tg_task.c
 * 
 * ESP32 Task.
 * 
 */

#include <freertos/FreeRTOS.h>
#include <freertos/task.h>

#include "tg_task.h"

/**************************************************************************
 *                                  Prototypes
 **************************************************************************/

/**************************************************************************
 *                                  Global Functions
 **************************************************************************/

/**
 * Creates all the tasks of the system
 * 
 * @param {TG_TASK} pTasks[]: List of tasks to be created. Will be modified.
 * @param {uint32_t} numTasks: Number of tasks.
 */
void TG_TasksCreate(TG_TASK* pTasks[], const uint32_t numTasks) {
    for (uint32_t taskIterator = 0; taskIterator < numTasks; taskIterator++) {
        TG_TaskCreate(pTasks[taskIterator]);
    }
}

/**
 * Creates the task.
 * 
 * @param {TG_TASK} pTask[]: Task to be created
 */
void TG_TaskCreate(TG_TASK* pTask) {
    // If coreID is greater than 1, let the OS specify the
    if (pTask->coreID != 1 || pTask->coreID == 0) {
        pTask->coreID = tskNO_AFFINITY;
    }

    xTaskCreatePinnedToCore(
        pTask->pFnTask,
        pTask->pTaskName, 
        pTask->stackSize,
        NULL,
        pTask->priority,
        pTask->taskHandler,
        pTask->coreID
    );

    return;
}

/**
 * Kills a specified task.
 * 
 * @param {TG_TASK} pTask: Task to be killed.
 */
void TG_TaskKill(TG_TASK* pTask) {
    if (pTask->taskHandler) {
        vTaskDelete(pTask->taskHandler);
        pTask->taskHandler = NULL;
    }
}

/**
 * Suspends a specified task.
 * 
 * @param {TG_TASK} pTask: Task to be suspended.
 */
void TG_TaskSuspend(TG_TASK* pTask) {
    if (pTask->taskHandler) {
        vTaskSuspend(pTask->taskHandler);
    }
}


/**
 * Resumes a specified task.
 * 
 * @param {TG_TASK} pTask: Task to be suspended.
 */
void TG_TaskResume(TG_TASK* pTask) {
    if (pTask->taskHandler) {
        vTaskResume(pTask->taskHandler);
    }
}

/**************************************************************************
 *                                  Private Functions
 **************************************************************************/
