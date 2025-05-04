/*
 * util.c - commonly used utility functions.
 */
#include "../include/include.h"
void *checked_malloc(int len) /*返回了通用指针 */
{
  void *p = malloc(len);
  if (!p)
  {
    fprintf(stderr, "\nRan out of memory!\n");
    exit(1);
  }
  return p;
}

string String(char *s) /*返回自定义字符串类型，并且是在堆中开辟空间深复制了这个字符串*/
{
  string p = checked_malloc(strlen(s) + 1);
  strcpy(p, s);
  return p;
}

U_boolList U_BoolList(bool head, U_boolList tail)
{
  U_boolList list = checked_malloc(sizeof(*list) /*这里传入的是实体的类型*/);
  list->head = head;
  list->tail = tail;
  return list;
}
