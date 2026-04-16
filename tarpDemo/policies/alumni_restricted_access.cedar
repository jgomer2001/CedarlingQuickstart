@id("alumni_restricted_access")
permit(
  principal,
  action in Jans::Action::"Search",
  resource is Jans::student
)
when {
  resource.grad_year < 2026 ||
  (
context has tokens.jans_userinfo_token &&
context.tokens.jans_userinfo_token.hasTag("role") &&
context.tokens.jans_userinfo_token.getTag("role").contains("AdmissionsCounselor")
  )
};