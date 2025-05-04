#ifndef HOMEWORK1_H
#define HOMEWORK1_H
#include "include.h"
/**
 * filename:homework1.c
 * description: 检测一个程序中print语句中的参数个数
 * author:EthanYankang
 * create time:2025/05/01 23:18:50
 */

int maxargs(A_stm stm);
int maxargsexlst(A_expList expList);
int maxargsex(A_exp exp);
int countargs(A_expList expList);
int max(int temp1, int temp2);

#endif