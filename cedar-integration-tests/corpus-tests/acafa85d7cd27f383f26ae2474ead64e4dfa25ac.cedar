permit(
  principal == Mt::a::"%\u{1}\0",
  action in [Mt::Action::"action"],
  resource == Mt::a::"%\u{1}\0"
) when {
  true && principal
};
