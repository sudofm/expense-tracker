import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 12.99,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Tacos',
        amount: 8.99,
        date: DateTime.now(),
        category: Category.food),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text('The Chart'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses))
      ]),
    );
  }
}