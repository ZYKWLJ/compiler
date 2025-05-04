#ifndef _SLP_H_
#define _SLP_H_
#include "include.h"
/**
 * filename:slp.h
 * description: 这里以A_为前缀的结构体是抽象语法树(AST)的节点和函数！
 * author:EthanYankang
 * create time:2025/05/01 15:36:45
 */
typedef struct A_stm_ *A_stm;
typedef struct A_exp_ *A_exp;
typedef struct A_expList_ *A_expList;
/**
 * data descp: 二元表达式的操作符。无非就是加减乘除。
 */
typedef enum
{
       A_plus,
       A_minus,
       A_times,
       A_div
} A_binop;

/**
 * func descp: 抽象语法树的节点。用来例如解析：a  :=  5 + 3; b := (print(a, a - 1), 10 * a); print(b)语句
 */
struct A_stm_
{
       enum
       {
              A_compoundStm, /*;*/
              A_assignStm,   /*:=*/
              A_printStm     /*print*/
       } kind;               /*语句的类型*/
       union                 /*对应类型下的详细结构体，此处只有一个，使用联合体实现*/
       {
              struct
              {
                     A_stm stm1, stm2;
              } compound; /*复合语句在;两边各有一个语句*/
              struct
              {
                     string id;
                     A_exp exp;
              } assign; /*赋值语句左边是id，右边是表达式*/
              struct
              {
                     A_expList exps;
              } print; /*打印语句里面就是表达式列表*/
       } u;
};
/**
 * func descp: 创建抽象语法树的节点。
 */
A_stm A_CompoundStm(A_stm stm1, A_stm stm2);
A_stm A_AssignStm(string id, A_exp exp);
A_stm A_PrintStm(A_expList exps);

/**
 * data descp: 抽象语法树的表达式节点。
 *
 * 可以看到这里有四种表达式：
 * 1. 标识符表达式，例如a
 * 2. 数字表达式，例如5
 * 3. 二元表达式，例如a+ 5
 * 4. 序列表达式，例如b:=(print(a, a - 1),10*a)
 */
struct A_exp_
{
       enum
       {
              A_idExp,  /*标识符表达式，即a*/
              A_numExp, /*数字表达式，即1*/
              A_opExp,  /*二元表达式，即1+4*/
              A_eseqExp /*序列表达式，即中间带`,`的,例如(a,b)*/
       } kind;
       union
       {
              /**
               * data descp: 针对以上的4种类型的表达式，分别定义了对应的结构体。
               */
              string id;
              int num;
              struct
              {
                     A_exp left;
                     A_binop oper;
                     A_exp right;
              } op;
              struct
              {
                     A_stm stm; /*b:=(print(a, a - 1),10*a);*/
                     A_exp exp; /*b:=a;*/
              } eseq;
       } u;
};
/**
 * func descp: 创建抽象语法树的表达式节点。
 */
A_exp A_IdExp(string id);
A_exp A_NumExp(int num);
A_exp A_OpExp(A_exp left, A_binop oper, A_exp right);
A_exp A_EseqExp(A_stm stm, A_exp exp);

/**
 * data descp: 抽象语法树的表达式列表节点。也就是说，表达式列表可以是多个表达式，也可以是一个表达式。
 */
struct A_expList_
{
       enum
       {
              A_pairExpList, /*匹配到剩下的多个表达式列表*/
              A_lastExpList, /*匹配到最后一个表达式列表*/
       } kind;
       union
       {
              struct
              {
                     A_exp head;
                     A_expList tail;
              } pair;     /*匹配到的剩下的多个表达式列表*/
              A_exp last; /*最后一个表达式列表的节点*/
       } u;
};

/**
 * func descp: 创建抽象语法树的表达式列表节点
 */
A_expList A_PairExpList(A_exp head, A_expList tail);
A_expList A_LastExpList(A_exp last);

#endif