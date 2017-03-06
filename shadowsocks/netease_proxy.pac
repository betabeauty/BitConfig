function regExpMatch(url, pattern) {    try { return new RegExp(pattern).test(url); } catch(ex) { return false; }    }

function FindProxyForURL(url, host) {
    if (!isInNet(myIpAddress(), "192.168.4.0", "255.255.255.0") && // in corp with lan
        !isInNet(myIpAddress(), "192.168.91.0", "255.255.255.0") && // in corp with wlan
		!isInNet(myIpAddress(), "192.168.90.0", "255.255.255.0") && // in corp with wlan
        !isInNet(myIpAddress(), "192.168.4.0", "255.255.255.0")) { // outof corp with vpn
		return "DIRECT";
    }


	if (shExpMatch(url, "*[0-9].corp.yodao.com*")) return 'SOCKS5 sucks.inner.youdao.com:1080';
	if (shExpMatch(host,"[a-z]{2}[0-9]{3}")&&host.length == 5) return 'SOCKS5 sucks.inner.youdao.com:1080';
	return 'DIRECT';
}
