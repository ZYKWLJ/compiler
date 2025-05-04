#ifndef UTIL_H_
#define UTIL_H_
#include"include.h"
/**
 * filename:util.h
 * description: 这是一个通用的工具包，如内存分配，字符串处理，日志模块，TODO模块等
 * author:EthanYankang
 * create time:2025/05/01 15:07:28
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char *string; // 自定义的字符串类型
typedef char bool;

#define TRUE 1
#define FALSE 0

void *checked_malloc(int);
string String(char *);

typedef struct U_boolList_ *U_boolList; /*链表定义的结构体指针，结构体都是用这个，本体将不会再任何地方使用*/
struct U_boolList_
{
    bool head;
    U_boolList tail; /*头尾判断*/
};
U_boolList U_BoolList(bool head, U_boolList tail);



/**
 * description: 日志模块
 * author:EthanYankang
 * create time:2025/05/01 14:41:31
 */

#define LOG
#ifdef LOG
#define LOG_PRINT(msg) printf("[LOG %s %s %s:%d] %s\n" __DATE__, __TIME__, __FILE__, __LINE__, msg)
#else
#define LOG_PRINT(msg) \
    do                 \
    {                  \
    } while (0)
#endif

/**
 * filename:util.h
 * description: TODO模块
 * author:EthanYankang
 * create time:2025/05/01 14:42:08
 */

#define TODO
#ifdef TODO
#define TODO_PRINT(msg) printf("[TODO %s %s %s:%d] %s\n", __DATE__, __TIME__, __FILE__, __LINE__, msg)
#else
#define TODO_PRINT(msg) \
    do                  \
    {                   \
    } while (0)
#endif

#endif