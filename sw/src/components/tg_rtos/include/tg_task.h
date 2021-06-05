/**
 * tg_task.h
 * 
 * ESP32 Task.
 * 
 */

#ifndef __TASK_H__
#define __TASK_H__

#include <freertos/FreeRTOS.h>
#include <freertos/task.h>

/**************************************************************************
 *                                  Types
 **************************************************************************/
/**
 * Core 0 or 1. Any other number means up to OS.
 */
typedef int ESP32_CORE_ID;

/**
 * TG Task
 */
typedef struct {
    char* pTaskName;
    uint32_t stackSize;

    ESP32_CORE_ID coreID;
    uint8_t priority; // 0 is the highest.
    TaskHandle_t* taskHandler;

    void* pFnInit;
    void* pFnTask;
    
}TG_TASK;

/**************************************************************************
 *                                  Constants
 **************************************************************************/

/**************************************************************************
 *                                  Global Functions
 **************************************************************************/

void TG_TasksCreate(TG_TASK* pTasks[], const uint32_t numTasks);
void TG_TaskCreate(TG_TASK* pTask);
void TG_TaskKill(TG_TASK* pTask);
void TG_TaskSuspend(TG_TASK* pTask);
void TG_TaskResume(TG_TASK* pTask);

#endif