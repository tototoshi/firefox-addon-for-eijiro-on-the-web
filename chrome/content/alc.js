function alc() {
    var ALC_URL_TOP = "http://eow.alc.co.jp/";
    var ALC_URL_FORMAT = "http://eow.alc.co.jp/%s/UTF-8/";

    var text = content.getSelection().toString();

    var url = "";
    if (text) {
        url = sprintf(ALC_URL_FORMAT, encodeURIComponent(text))
    } else {
        url = ALC_URL_TOP;
    }

    window.gBrowser.selectedTab = window.gBrowser.addTab(url);

    return void(0);
}