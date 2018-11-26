<?php

require("../../../init.php");
require("../../../includes/domainfunctions.php");

/*
*** USAGE SAMPLES ***

<style type="text/css">
table.domainpricing {
    width: 600px;
    background-color: #ccc;
}
table.domainpricing th {
    padding: 3px;
    background-color: #efefef;
    font-weight: bold;
}
table.domainpricing td {
    padding: 3px;
    background-color: #fff;
    text-align: center;
}
</style>
<script language="javascript" src="feeds/domainpricing.php?currency=1"></script>

*/

$code = '<ul id="domainFiyatlari"><li class="title"><div class="uzanti">Uzantı</div><div class="sure">Süre</div><div class="tescil">Tescil</div><div class="yenileme">Yenileme</div><div class="transfer">Transfer</div></li>';

if (!is_numeric($currency)) {
    $currency = array();
} else {
    $currency = getCurrency('', $currency);
}

if (!$currency || !is_array($currency) || !isset($currency['id'])) {
    $currency = getCurrency();
}

$freeamt = formatCurrency(0);
$tldslist = getTLDList();
foreach ($tldslist AS $tld) {
    $tldpricing = getTLDPriceList($tld, true);
    $firstoption = current($tldpricing);
    $year = key($tldpricing);
    $transfer = ($firstoption["transfer"] == $freeamt) ? $_LANG['orderfree'] : $firstoption["transfer"];
    $code .= sprintf(
        '<li><div class="uzanti">%s</div><div class="sure">%s Yıl</div><div class="tescil">%s</div><div class="yenileme">%s</div><div class="transfer">%s</div></li>',
        htmlspecialchars($tld, ENT_QUOTES, 'UTF-8'),
        $year,
        htmlspecialchars($firstoption["register"], ENT_QUOTES, 'UTF-8'),
        htmlspecialchars($transfer, ENT_QUOTES, 'UTF-8'),
        htmlspecialchars($firstoption["renew"], ENT_QUOTES, 'UTF-8')
    );
}

$code .= "</ul>";

echo "document.write('".$code."');";
