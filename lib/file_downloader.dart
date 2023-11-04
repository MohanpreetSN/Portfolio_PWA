import 'dart:html';

openLink(String link) {
  AnchorElement anchorElement = new AnchorElement(href: link);
  anchorElement.download = "Mohanpreet Resume 2022";
  anchorElement.click();
}

downloadFile() {
  // AnchorElement anchorElement = new AnchorElement(href: 'https://drive.google.com/uc?export=download&id=1U7x5_o3a73vFWJKoHDw3K44y0jr93HtA');
  // anchorElement.download = "Mohanpreet Resume 2022";
  // anchorElement.click();
  openLink('https://drive.google.com/uc?export=download&id=10YGE2ow1VKBLAQpDrn2syb7Y5yUQ1xTM');
}

openSbPlayStore() {
  openLink('https://play.google.com/store/apps/details?id=com.mpstechnologies.sbDiagnostics');
}
