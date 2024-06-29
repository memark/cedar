permit(
  principal == a::"\0@",
  action,
  resource
) when {
  (true && (if ("" like "*\u{12}v*") then principal else principal)) && principal
};
