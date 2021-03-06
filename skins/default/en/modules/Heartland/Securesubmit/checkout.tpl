<div class="cc-form-container heartland-container" {printTagAttributes(getDataAtttributes()):h}>
	<div class="header-line"></div>
	<div class="content">
        <div class="header">
            <div class="lock"></div>
            <h2>{t(#Secure credit card payment#)}</h2>
        </div>
        {if:profile.hasSecuresubmitCreditCards()}
        {if:useSavedCardsEnabled()}
            <div class="saved-cards">
                <h3>Saved Cards</h3>
                <ul>
                    {foreach:profile.getSecuresubmitCreditCards(),i,cc}
                        <li>
                            <label for="securesubmit_use_stored_card_{i}">
                                <input type="radio" id="securesubmit_use_stored_card_{i}" name="payment[securesubmit_use_stored_card]" value="{cc.id}">
                                {cc.cardBrand} ending with {cc.lastFour} ({cc.expMonth}/{cc.expYear})
                            </label>
                        </li>
                    {end:}
                    <li>
                        <label for="securesubmit_use_stored_card_new">
                            <input type="radio" id="securesubmit_use_stored_card_new" name="payment[securesubmit_use_stored_card]" checked="checked" value="new">
                            <script>document.getElementById('securesubmit_use_stored_card_new').checked = true;</script>
                            Use new card
                        </label>
                    </li>
                </ul>
            </div>
        {end:}
        {end:}
        <div class="cc-form">


			<div class="cardNumber">
				<div class="title">{t(#Card number#)}:</div>
				<div class="value">
					<input id="card-number" type="tel" size="25" placeholder="XXXX-XXXX-XXXX-XXXX" autocomplete="off" />
				</div>
			</div>

            <div class="cardExpire">
                <div class="title lite-hide">{t(#Expiration date#)}:</div>
                <div class="value">
                    <div class="top-line">
                        <div class="top-text lite-hide">{t(#MONTH#)} / {t(#YEAR#)}</div>
                    </div>
                    <div class="bottom-line">
                        <div class="left-text lite-hide">{t(#VALID THRU#)}</div>
                        <div class="left-text lite-hide default-hide mobile-show">
                            <span class="valid-thru">{t(#VALID THRU#)}</span>
                            <br>
                            <span class="month-year">{t(#MONTH#)} / {t(#YEAR#)}</span>
                        </div>
                        <div class="month-container">
                            <select id="card-expiry-month" class="validate[required]">
                                <option value="01" selected="selected">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                            <div class="bottom-text-month default-hide">{t(#MONTH#)}</div>
                        </div>
                        <div class="year-container">
                            <select id="card-expiry-year" class="validate[required]"></select>
                            <div class="bottom-text-month default-hide">{t(#YEAR#)}</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="cardCVV2 required">
                <div class="title lite-hide">{t(#Security code#)}:</div>
                <div class="value">
                    <input size="5" maxlength="4" placeholder="CVV" id="card-cvc" type="text" autocomplete="off">
                    {if:useSavedCardsEnabled()}
                        <label for="securesubmit_save_card">
                            <input type="checkbox" name="payment[securesubmit_save_card]" value="save" style="width: 20px !important;">
                            Save card?
                        </label>
                    {end:}
                </div>
            </div>

			<input type="hidden" name="payment[securesubmit_token]" id="securesubmit_token" value="" class="token" />
			<input type="hidden" name="payment[securesubmit_card_type]" id="securesubmit_card_type" value="" class="token" />
			<input type="hidden" name="payment[securesubmit_last_four]" id="securesubmit_last_four" value="" class="token" />
			<input type="hidden" name="payment[securesubmit_exp_month]" id="securesubmit_exp_month" value="" class="token" />
			<input type="hidden" name="payment[securesubmit_exp_year]" id="securesubmit_exp_year" value="" class="token" />

		</div>
	</div>
</div>