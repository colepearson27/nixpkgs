{
  buildPythonPackage,
  fetchFromGitHub,
  lib,
  setuptools,
  hatchling,
}:

buildPythonPackage (finalAttrs: {
  pname = "kanjize";
  version = "1.6.1";
  pyproject = true;

  __structuredAttrs = true;
  strictDeps = true;

  src = fetchFromGitHub {
    owner = "nagataaaas";
    repo = "kanjize";
    tag = "${finalAttrs.version}";
    hash = "sha256-eR4rtGpwzZ8VALiaybr6fdUok6DkvZc+Q1AONIfr4s4=";
  };

  build-system = [
    setuptools
    hatchling
  ];

  meta = {
    description = "Easy converter between Kanji-Number and Integer";
    homepage = "https://pypi.org/project/kanjize/";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ colepearson27 ];
  };
})
