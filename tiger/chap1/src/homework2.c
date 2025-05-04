/**
 * filename:homework2.c
 * description:
 * author:EthanYankang
 * create time:2025/05/02 19:56:41
 */
#include "../include/include.h"

/**
 * data descp: 解释表(本质是链表)，组成就是标识符到值的映射。也就是我们常说的，变量就是内存区域值的映射。
 * 标识符：在编程语言中，标识符是用来标识`变量、函数、类、模块`以及其他实体的名称。它是一个通用的概念，具有一定的命名规则
 */
typedef struct table
{
    string id;          /*变量名*/
    int value;          /*变量值*/
    struct table *tail; /*下一个表，递归*/
} *Table_;

/**
 * data descp: 解释表达式的结果是返回一个整形值int和一个新表的结构体t2，进一步进行解释。
 */
typedef struct IntAndTable
{
    int i;
    Table_ t;
} *IntAndTable_;

Table_ Table(Table_ t, string id, int value);
int lookUp(Table_ t, string id);
Table_ updateTable(Table_ t, string id, int newResult);
void interp(A_stm stm);
Table_ interpStm(A_stm stm, Table_ t);
int getOpResult(int x, int y, int kind);
IntAndTable_ interpExp(A_exp exp, Table_ t);
IntAndTable_ intAndTable(int i, Table_ t);
IntAndTable_ interpAndPrint(A_expList expLst, Table_ t);

Table_ Table(Table_ t, string id, int value)
{
    Table_ temp = (Table_)checked_malloc(sizeof(*t));
    temp->id = id;
    temp->value = value;
    temp->tail = t;
    return temp;
}

// 返回id 所对应的值，Table本质是一个链表
int lookUp(Table_ t, string id)
{
    Table_ curr = t;
    while (curr != NULL)
    {
        if (curr->id == id)
            return curr->value;
        curr = curr->tail;
    }
    assert(!curr);
    return 0;
}

// 将变量的值插入在表的开头
Table_ updateTable(Table_ t, string id, int newResult)
{
    Table_ temp = Table(t, id, newResult);
    return temp;
}

/**
 * func descp: 解释器，对已有的程序进行解释
 */
void interp(A_stm stm)
{
    /**
     * data descp: It must be `stm` at the very beginning.
     */

    interpStm(stm, NULL);
}

Table_ interpStm(A_stm stm, Table_ t)
{
    if (stm != NULL)
    {
        switch (stm->kind)
        {
        case A_compoundStm:
            t = interpStm(stm->u.compound.stm1, t);
            t = interpStm(stm->u.compound.stm2, t);
            break;
        /**
         * func descp: 赋值语句的话，就是将表达式的值赋值给变量，然后将变量的值插入到表中。
         * 例如：a := 5 + 3; 就是将5 + 3的值赋值给变量a，然后将变量a的值插入到表中。
         */
        case A_assignStm:
        {
            IntAndTable_ intTable = intAndTable(0, t);
            intTable = interpExp(stm->u.assign.exp, t);
            t = updateTable(t, stm->u.assign.id, intTable->i);
            break;
        }
        case A_printStm:
            interpAndPrint(stm->u.print.exps, t);
            break;
        }
    }
    return t;
}

/**
 * func descp: 解释并打印表达式结果
 */

IntAndTable_ interpAndPrint(A_expList expLst, Table_ t)
{
    assert(expLst);
    IntAndTable_ intTable = intAndTable(0, t);
    while (expLst->kind == A_pairExpList)
    {
        /**
         * data descp: 这里唯一需要注意的就是递归打印
         */
        intTable = interpExp(expLst->u.pair.head, intTable->t);
        expLst = expLst->u.pair.tail;
    }
    intTable = interpExp(expLst->u.last, intTable->t);
    printf("%d\n", intTable->i);
}
/**
 * func descp: IntAndTable的构造函数
 */

IntAndTable_ intAndTable(int i, Table_ t)
{
    IntAndTable_ temp = (IntAndTable_)checked_malloc(sizeof(*temp));
    temp->i = i;
    temp->t = t;
    return temp;
}
/**
 * func descp: 解释表达式，这是最关键的点，因为这里才是真正的核心！这是标识符和值相互关联的本质处理核心。
 */

IntAndTable_ interpExp(A_exp exp, Table_ t)
{
    if (exp == NULL)
    {
        return NULL;
    }
    else
    {
        IntAndTable_ intTable = intAndTable(0, t);
        switch (exp->kind)
        {
        case A_idExp:
            intTable->i = lookUp(t, exp->u.id); /*标识符和值相互关联*/
            break;
        case A_numExp:
            intTable->i = exp->u.num; /*值就是值*/
            break;
        case A_opExp:
            /**
             * data descp: 递归解释左右两边，得到结果后再进行运算。
             */
            intTable = interpExp(exp->u.op.left, t);
            int i = intTable->i;
            intTable = interpExp(exp->u.op.right, intTable->t); /**/
            int j = intTable->i;
            /**
             * data descp: 得到运算结果
             */
            intTable->i = getOpResult(i, j, exp->u.op.oper); /**/
            break;
        case A_eseqExp:
            t = interpStm(exp->u.eseq.stm, t);        /*序列化的话，还是需要再次解释语句*/
            intTable = interpExp(exp->u.eseq.exp, t); /*解释表达式*/
            break;
        }
        return intTable;
    }
}

/**
 * func descp: 计算的结果
 */
int getOpResult(int x, int y, int kind)
{
    switch (kind)
    {
    case A_plus:
        return x + y;
    case A_minus:
        return x - y;
    case A_div:
        return x / y;
    case A_times:
        return x * y;
    }
}

#ifdef GATE_HOMEWORK2
int main()
{

    /**
     * data descp: 我算是明白本质了，就是不断地结构化解释，最终得到最后的运算结果。
     */
    A_stm stm = prog();
    interp(stm);
    return 0;
}
/**
这里当然结果是7 80 因为两次打印就是这个结果，主要是序列运算需要注意下。即print(a, a - 1)等价于print(a - 1)
a = 5 + 3;b = (print(a, a - 1//7), 10 * a//80);print(b//80);
*/

#endif