enum TransactionSigningModes {
  ordinaryTransaction(3),
  poolRegistrationAsOwner(4),
  poolRegistrationAsOperator(5),
  multisigTransaction(6),
  plutusTransaction(7),
  unrestrictedTransaction(9);

  final int value;

  const TransactionSigningModes(this.value);
}
