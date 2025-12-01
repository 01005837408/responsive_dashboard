class TransactionHistoryModel {
 final String title , amount , date ;
  final bool isWithdrawn ;
  const TransactionHistoryModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.isWithdrawn,
  });
}