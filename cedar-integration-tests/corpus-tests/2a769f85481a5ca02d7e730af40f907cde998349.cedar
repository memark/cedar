permit(
  principal == a::"c\0\0\u{7}",
  action in [Action::"action"],
  resource == a::"c\0\0\u{7}"
) when {
  true && (a::"c\0\0\u{7}" == false)
};
