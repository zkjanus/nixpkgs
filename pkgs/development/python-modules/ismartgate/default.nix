{ lib
, asynctest
, buildPythonPackage
, click
, defusedxml
, dicttoxml
, fetchFromGitHub
, httpx
, pycryptodome
, pytest-asyncio
, pytest-raises
, pytestCheckHook
, pythonOlder
, respx
, typing-extensions
}:

buildPythonPackage rec {
  pname = "ismartgate";
  version = "4.0.3";
  disabled = pythonOlder "3.7";

  src = fetchFromGitHub {
    owner = "bdraco";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-s9fHvjqPHDKuT/DMGu1ETuPNlFIkp0wlv15KeTb6fX8=";
  };

  propagatedBuildInputs = [
    click
    defusedxml
    dicttoxml
    httpx
    pycryptodome
    typing-extensions
  ];

  checkInputs = [
    asynctest
    pytest-asyncio
    pytest-raises
    pytestCheckHook
    respx
  ];

  postPatch = ''
    substituteInPlace setup.py \
      --replace '"pytest-runner>=5.2",' ""
  '';

  pythonImportsCheck = [ "ismartgate" ];

  meta = with lib; {
    description = "Python module to work with the ismartgate and gogogate2 API";
    homepage = "https://github.com/bdraco/ismartgate";
    license = with licenses; [ mit ];
    maintainers = with maintainers; [ fab ];
  };
}
