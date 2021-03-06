<div class="panel panel-default">
    <div class="panel-heading">{l s='General information' mod='descomsms'}</div>
    <div class="panel-body" style="font-size: 1.2em;">
        <div class="col-md-6">
            <p><strong>{l s='User' mod='descomsms'}: </strong> {$user}</p>
            <p><strong>{l s='SMS Balance' mod='descomsms'}: </strong> {$credits} {l s='credits' mod='descomsms'} - <a href="https://www.descomsms.com/recargas/" target='blank_'>{l s='Buy SMS' mod='descomsms'}</a> </p>
        </div>
        <div class="col-md-6">
            <p><strong>{l s='Current version' mod='descomsms'}: </strong> {$version}</p>
            <p><strong>{l s='Latest version' mod='descomsms'}: </strong> {$version_latest}</p>
            {if $version_latest_url != '' && $need_update}
                <a class="btn btn-info" href="{$version_latest_url}" target="blank_">{l s='Update' mod='descomsms'}</a>
            {/if}
        </div>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">{l s='Select your sender ID' mod='descomsms'}</div>
    <div class="panel-body">
        <form id="formSender" action="{$link->getAdminLink('AdminDescomsms')|escape:'htmlall':'utf-8'}" method="post">
            <div class="form-group">
                <label for="selectSender">{l s='Sender' mod='descomsms'}</label>
                <select id="selectSender" name="selectSender" class="form-control">
                    {foreach from=$senders item=sender_item}
                        <option {if $sender==$sender_item}selected{/if}>{$sender_item}</option>
                    {/foreach}
                </select>
            </div>
            <p>{l s='Gain efficiency, send SMS messages with the name of your store or brand:' mod='descomsms'} <a href='https://www.descomsms.com/enviar-sms/sms-prestashop.html#remitente-sms' target='blank_'>{l s='add sender ID' mod='descomsms'}</a></p><br>
            <button name="submit_sender" type="submit" class="btn btn-default">{l s='Save' mod='descomsms'}</button>
        </form>
    </div>
</div>

<h2>{l s='Clients SMS send' mod='descomsms'}</h2>
<div class="panel panel-default">
    <div class="panel-heading">{l s='Alert correct payment' mod='descomsms'}</div>
    <div class="panel-body">
        <form action="{$link->getAdminLink('AdminDescomsms')|escape:'htmlall':'utf-8'}" method="post">
            <div class="form-group">
                <div class="checkbox">
                    <label>
                        <input id="checkPay" name="checkPay" type="checkbox" {if $check_order_pay=='on'}checked{/if}>{l s='Send SMS to the customer when the payment of an order is made.' mod='descomsms'}
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="textareaPago">Texto SMS</label>
                <textarea id="textareaPay" name="textareaPay" class="form-control" rows="3">{$text_order_pay}</textarea>
                <br>
                <pre>{l s='Variables: [shop_name], [order_id]' mod='descomsms'}</pre>
            </div>
            <button name="submit_pay" type="submit" class="btn btn-default">{l s='Save' mod='descomsms'}</button>
        </form>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">{l s='Alert order sent' mod='descomsms'}</div>
    <div class="panel-body">
        <form action="{$link->getAdminLink('AdminDescomsms')|escape:'htmlall':'utf-8'}" method="post">
            <div class="form-group">
                <div class="checkbox">
                    <label>
                        <input id="checkSend" name="checkSend" type="checkbox" {if $check_order_send=='on'}checked{/if}>{l s='Send SMS to the customer when sending an order.' mod='descomsms'}
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="textareaEnvio">{l s='SMS text' mod='descomsms'}</label>
                <textarea id="textareaSend" name="textareaSend" class="form-control" rows="3">{$text_order_send}</textarea>
                <br>
                <pre>{l s='Variables: [shop_name], [order_id]' mod='descomsms'}</pre>
            </div>
            <button name="submit_send" type="submit" class="btn btn-default">{l s='Save' mod='descomsms'}</button>
        </form>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">{l s='Stock product replacement alert' mod='descomsms'}</div>
    <div class="panel-body">
      <p><strong>{l s='Important:' mod='descomsms'}</strong> {l s='Require module' mod='descomsms'}<a href="https://github.com/PrestaShop/mailalerts" target="_blank"> mailalerts</a> {l s='installed and customer registered.' mod='descomsms'}</p><br>
        <form action="{$link->getAdminLink('AdminDescomsms')|escape:'htmlall':'utf-8'}" method="post">
            <div class="form-group">
                <div class="checkbox">
                    <label>
                        <input id="checkStock" name="checkStock" type="checkbox" {if $check_product_stock=='on'}checked{/if}>{l s='Send SMS to customers who have asked to be notified when the stock of a certain product is replenished.' mod='descomsms'}
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="checkbox">
                    <label data-toggle="tooltip" title="{l s='If uncheck only one SMS will be sent to the first number found' mod='descomsms'}">
                        <input id="checkAllAdresses" name="checkAllAdresses" type="checkbox" {if $check_product_stock_all_addresses=='on'}checked{/if}>{l s='Send SMS to all client addresses.' mod='descomsms'}
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="textareaStock">{l s='SMS text' mod='descomsms'}</label>
                <textarea id="textareaStock" name="textareaStock" class="form-control" rows="3">{$text_product_stock}</textarea>
                <br>
                <pre>{l s='Variables: [shop_name], [product_name], [product_stock]' mod='descomsms'}</pre>
            </div>
            <button name="submit_stock" type="submit" class="btn btn-default">Guardar</button>
        </form>
    </div>
</div>


<div class="clear"></div>
