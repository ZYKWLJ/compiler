// /**
//  * filename:test.c
//  * description: 检测一个程序中print语句中的参数个数
//  * author:EthanYankang
//  * create time:2025/05/01 23:18:50
//  */
// #include "../include/include.h"
// int maxargs(A_stm stm);
// int maxargsexlst(A_expList expList);
// int maxargsex(A_exp exp);
// int countargs(A_expList expList);
// int max(int temp1, int temp2)
// {
// 	return temp1 > temp2 ? temp1 : temp2;
// }

// /**
//  * data descp: 计算表达式列表里面的参数
//  */
// int maxargsexlst(A_expList expList)
// {
// 	switch (expList->kind)
// 	{
// 		/**
// 		 * data descp: 如果是多个表达式列表的话，需要递归计算
// 		 */
// 	case A_pairExpList:
// 	{
// 		int temp1 = maxargsexlst(expList->u.pair.tail);
// 		int temp2 = maxargsex(expList->u.pair.head);
// 		return max(temp1, temp2);
// 	}
// 		/**
// 		 * data descp: 如果是最后一个表达式列表的话，需要直接计算
// 		 */
// 	case A_lastExpList:
// 		return maxargsex(expList->u.last);
// 	default:
// 		return 0;
// 	}
// }
// /*计算表达式里面的参数*/
// int maxargsex(A_exp exp)
// {
// 	switch (exp->kind)
// 	{
// 	case A_opExp:
// 	{
// 		/**
// 		 * data descp: 分别递归计算二元运算符的左右表达式
// 		 */
// 		int temp1 = maxargsex(exp->u.op.left);
// 		int temp2 = maxargsex(exp->u.op.right);
// 		return max(temp1, temp2);
// 	}
// 	case A_eseqExp:
// 	{
// 		/**
// 		 * data descp:如果是序列表达式的话，需要直接运算抽离出来的表达式，然后再计算序列表达式，两者取最大值
// 		 */
// 		int temp3 = maxargsex(exp->u.eseq.exp);
// 		int temp4 = maxargs(exp->u.eseq.stm);
// 		return max(temp3, temp4);
// 	}
// 	default:
// 		return 0;
// 	}
// }

// int maxargs(A_stm stm)
// {
// 	//  In essence, the first one must be a `compoundStm` because our input is a program, and the first element of a program must be a compound statement. However, recursion is required here, so this approach is feasible.
// 	// 从本质上讲，第一个元素必须是 'compoundStm'，因为我们的输入是一个程序，而程序的第一个元素必须是复合语句。但是，这里需要递归，因此这种方法是可行的。
// 	switch (stm->kind)
// 	{
// 	case A_compoundStm:
// 	{
// 		/**
// 		 * data descp: 分别递归计算
// 		 */
// 		int temp1 = maxargs(stm->u.compound.stm1);
// 		int temp2 = maxargs(stm->u.compound.stm2);
// 		return max(temp1, temp2);
// 	}
// 	case A_assignStm:
// 	{ /**
// 	   * data descp: 赋值运算的话，需要计算右边的表达式
// 	   */
// 		A_exp tempExp = stm->u.assign.exp;
// 		return maxargsex(tempExp);
// 	}
// 		/**
// 		 * data descp: 其实只有这里才需要计算，因为这里才匹配到的print语句，其他的都不需要计算，其他的目的是解析到这里来。
// 		 */
// 	case A_printStm:
// 		return max(maxargsexlst(stm->u.print.exps), countargs(stm->u.print.exps));
// 	default:
// 		return 0;
// 	}
// }

// /**
//  * func descp: 这才是最后的数参数的函数，其余的都在划归解析。
//  */
// int countargs(A_expList expList)
// {
// 	if (expList->kind == A_pairExpList)
// 	{
// 		return 1 + countargs(expList->u.pair.tail);
// 	}
// 	else
// 		return 1;
// }
// /**********************************************************/
// int main()
// {
// 	A_stm stm = prog();
// 	printf("%d", maxargs(stm));
// 	// system("pause");
// 	return 0;
// }