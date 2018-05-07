<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SSM</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div style="width: auto; margin: 0 auto;">

    <table class="table table-bordered" style="width:100%;">
        <tr>
            <td>#</td>
            <td>Operator</td>
            <td>Ad</td>
            <td>Kod</td>
            <td>Barkod</td>
            <td>Sayı</td>
            <td>Qaimə №</td>
            <td>Alış (USD)</td>
            <td>Satış (USD)</td>
            <td>Alış (AZN)</td>
            <td>Satış (AZN)</td>
            <td>Cəmi alış (USD)</td>
            <td>Cəmi satış (USD)</td>
            <td>Cəmi alış (AZN)</td>
            <td>Cəmi satış (AZN)</td>
            <td width="90">Tarix</td>
        </tr>
        {assign var=total_count value=0}
        {assign var=total_count_azn value=0}
        {assign var=total_buy value=0}
        {assign var=total_buy_azn value=0}
        {assign var=total_sell value=0}
        {assign var=total_sell_azn value=0}
        {assign var="i" value=0}
        {foreach from=$invoices item=invoice}
            {assign var="i" value=$i+1}
            <tr>

                <td>{$i}</td>
                <td>{if empty($invoice.operator_name)}{$user.name}{else}{$invoice.operator_name}{/if}</td>
                <td>{$invoice.short_info}</td>
                <td>{$invoice.goods_code}</td>
                <td>{$invoice.barcode}</td>
                <td>{$invoice.count}</td>
                <td>{$invoice.serial}</td>

                <td>{if $invoice.currency}{$invoice.buy_price}{/if}</td>
                <td>{if $invoice.currency}{$invoice.sell_price}{/if}</td>
                <td>{if !$invoice.currency}{$invoice.buy_price}{/if}</td>
                <td>{if !$invoice.currency}{$invoice.sell_price}{/if}</td>
                <td>{if $invoice.currency}{$invoice.buy_price * $invoice.count}{/if}</td>
                <td>{if $invoice.currency}{$invoice.sell_price * $invoice.count}{/if}</td>
                <td>{if !$invoice.currency}{$invoice.buy_price * $invoice.count}{/if}</td>
                <td>{if !$invoice.currency}{$invoice.sell_price * $invoice.count}{/if}</td>

                {if $invoice.currency}
                    {$total_count = $total_count + $invoice.count}
                    {$total_buy = $total_buy + ($invoice.buy_price * $invoice.count)}
                    {$total_sell=$total_sell + ($invoice.sell_price * $invoice.count)}
                {else}
                    {$total_count_azn = $total_count_azn + $invoice.count}
                    {$total_buy_azn = $total_buy_azn + ($invoice.buy_price * $invoice.count)}
                    {$total_sell_azn=$total_sell_azn + ($invoice.sell_price * $invoice.count)}
                {/if}


                <td>{$invoice.date|substr:0:10}</td>
            </tr>
        {/foreach}
        <tr>
            <td colspan="5">Göstərilənlərin cəmi: (USD)</td>
            <td>{$total_count}</td>
            <td colspan="5"></td>
            <td>{$total_buy}</td>
            <td>{$total_sell}</td>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td colspan="5">Göstərilənlərin cəmi: (AZN)</td>
            <td>{$total_count_azn}</td>
            <td colspan="7"></td>
            <td>{$total_buy_azn}</td>
            <td>{$total_sell_azn}</td>
            <td></td>
        </tr>
        <tr>
            <td colspan="5">Göstərilənlərin cəmi üzrə gəlir: (USD)</td>
            <td>{$total_count}</td>
            <td colspan="5"></td>
            <td colspan="2">{$total_sell - $total_buy}</td>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td colspan="5">Göstərilənlərin cəmi üzrə gəlir: (AZN)</td>
            <td>{$total_count_azn}</td>
            <td colspan="7"></td>
            <td colspan="2">{$total_sell_azn - $total_buy_azn}</td>
            <td></td>
        </tr>
        <tr>
            <td colspan="5">Cəmi: (USD)</td>
            <td>{$summary.count}</td>
            <td colspan="5"></td>
            <td>{$summary.total_buy_price}</td>
            <td>{$summary.total_sell_price}</td>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td colspan="5">Cəmi: (AZN)</td>
            <td>{$summary.count_azn}</td>
            <td colspan="7"></td>
            <td>{$summary.total_buy_price_azn}</td>
            <td>{$summary.total_sell_price_azn}</td>
            <td></td>
        </tr>
        <tr>
            <td colspan="5">Cəmi gəlir: (USD)</td>
            <td>{$summary.count}</td>
            <td colspan="5"></td>
            <td colspan="2">{$summary.total_sell_price - $summary.total_buy_price}</td>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td colspan="5">Cəmi gəlir: (AZN)</td>
            <td>{$summary.count_azn}</td>
            <td colspan="7"></td>
            <td colspan="2">{$summary.total_sell_price_azn - $summary.total_buy_price_azn}</td>
            <td></td>
        </tr>
    </table>

</div>
<script>
    window.print();
</script>
</body>
</html>
