forbid(
  principal == a::"",
  action in [],
  resource
) when {
  ((true && (((principal like "") like "") like "")) && (Action::"action" <= a::"")) && principal
};
