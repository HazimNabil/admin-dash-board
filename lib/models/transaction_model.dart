class TransactionModel {
  final String title, date, amount;
  final Outcome outcome;

  const TransactionModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.outcome,
  });
}

enum Outcome {
  gain,
  loss,
}
