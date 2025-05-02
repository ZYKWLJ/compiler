#include "../include/include.h"
/**
 * func descp: 返回一个程序,尝试解析复原之
 */
A_stm prog(void)
{

    return A_CompoundStm(A_AssignStm /*indicate The next operation is :=，Specifically is a=5+3 */ ("a",
                                                                                                    A_OpExp(A_NumExp(5), A_plus, A_NumExp(3))) /*a=5+3*/, /*;*/
                         A_CompoundStm /*there has a `;`*/ (A_AssignStm /*indicate The next operation is :=,Specifically is b:=(print(a,a-1),10*a)*/ ("b",
                                                                                                                                                      A_EseqExp /*indicate The next operation is seq-operation`,`Specifically is (print(a,a-1),10*a)*/ (A_PrintStm /*indicate The next operation is`print`,SPecifically is print(a,a-1)*/ (A_PairExpList(A_IdExp("a"),
                                                                                                                                                                                                                                                                                                                                                         A_LastExpList(A_OpExp(A_IdExp("a"), A_minus,
                                                                                                                                                                                                                                                                                                                                                                               A_NumExp(1))) /*a-1*/) /*(a,a-1)*/) /*print(a,a-1)*/,
                                                                                                                                                                                                                                                        A_OpExp /*indicate The next operation is *，Specifically is `*`*/ (A_NumExp(10), A_times, A_IdExp("a")) /*(10*a)*/) /*(print(a,a-1),10*a)*/),
                                                            A_PrintStm(A_LastExpList(A_IdExp("b")))));
}

/*其实可以看出，这就是波兰表达式的范畴，中间的运算符被作为构造函数的形式提在前面*/
/**
 {
    a = 5 + 3;
    {
        b = (print(a, a - 1), 10 * a);
        print(b);
    }
}
*/
