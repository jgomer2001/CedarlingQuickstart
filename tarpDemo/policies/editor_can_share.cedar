@id("editor_can_share")
permit (
  principal,
  action == Jans::Action::"Share",
  resource is Jans::Application
)
when {
  context has tokens.jans_userinfo_token &&
  context.tokens.jans_userinfo_token.hasTag("role") &&
  context.tokens.jans_userinfo_token.getTag("role").contains("Editor")
};