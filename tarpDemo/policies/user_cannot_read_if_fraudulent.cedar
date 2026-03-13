@id("user_cannot_read_if_fraudulent")
forbid (
  principal,
  action == Jans::Action::"Read",
  resource is Jans::SecretDocument
)
when {
  context has tokens.jans_userinfo_token &&
  context has fraud_indicators &&
  context.fraud_indicators.contains("high_risk")
};