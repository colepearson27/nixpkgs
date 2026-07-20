{
  buildPythonPackage,
  fetchFromGitHub,
  lib,
  kanjize,
  gradio,
  huggingface-hub,
  inflect,
  numpy,
  phonemizer,
  setuptools,
  sudachidict-full,
  sudachipy,
  torch,
  torchaudio,
  transformers,
  matplotlib,
  soundfile,
}:

buildPythonPackage (finalAttrs: {
  pname = "zonos";
  version = "0.1.0.dev0";
  pyproject = true;

  __structuredAttrs = true;
  strictDeps = true;

  src = fetchFromGitHub {
    owner = "Zyphra";
    repo = "Zonos";
    rev = "bc40d98";
    hash = "sha256-YOrqPDxcq03K8qdia3sldmKrKAdtD5vTjG1jwzoucyU=";
  };

  build-system = [
    kanjize
    gradio
    huggingface-hub
    inflect
    numpy
    phonemizer
    setuptools
    soundfile
    sudachidict-full
    sudachipy
    torch
    torchaudio
    transformers
    matplotlib
  ];

  meta = {
    description = "Open-weight text-to-speech model trained on more than 200k hours of varied multilingual speech.";
    homepage = "https://github.com/Zyphra/Zonos";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ colepearson27 ];
  };
})
