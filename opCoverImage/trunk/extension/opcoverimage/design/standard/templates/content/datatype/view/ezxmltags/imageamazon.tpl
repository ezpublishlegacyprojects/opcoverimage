{if and( $size|eq('medium'), $shadow|ne('') )}
	{set $shadow = ezini('AmazonSettings','DropShadow','opcoverimage.ini').$shadow}
{/if}
{if $discount|ne('')}
	{set $discount = concat( ezini('AmazonSettings','Discount','opcoverimage.ini'), $discount, '_')}
{/if}
{switch match=$align}
    {case match='left'}
        <div class="imageleft">
    {/case}
    {case match='right'}
        <div class="imageright">
    {/case}
    {case/}
{/switch}
<img src="http://images.amazon.com/images/P/{$pcode}.{ezini('AmazonSettings','CountryCode','opcoverimage.ini')}.{$discount}{ezini('AmazonSettings','Size','opcoverimage.ini').$size}{$shadow}{if and(ezini_hasvariable('AmazonSettings','Sticker','opcoverimage.ini'), $sticker)}{ezini('AmazonSettings','Sticker','opcoverimage.ini')}{/if}.jpg">
{switch match=$align}
    {case in=array('left', 'right')}
        </div>
    {/case}
    {case/}
{/switch}