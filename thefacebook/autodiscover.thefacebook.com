``` <!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=10.000"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta http-equiv="cache-control" content="no-cache,no-store"/>
        <meta http-equiv="pragma" content="no-cache"/>
        <meta http-equiv="expires" content="-1"/>
        <meta name='mswebdialog-title' content='Connecting to   '/>

        <title>Sign In</title>
        <script type='text/javascript'>
//<![CDATA[
function LoginErrors(){this.userNameFormatError = 'Enter your user ID in the format \u0026quot;domain\\user\u0026quot; or \u0026quot;user@domain\u0026quot;.'; this.passwordEmpty = 'Enter your password.'; this.passwordTooLong = 'Password is too long (\u0026gt; 128 characters).';}; var maxPasswordLength = 128;
//]]>
</script>

<script type='text/javascript'>
//<![CDATA[
// Copyright (c) Microsoft Corporation.  All rights reserved.
function InputUtil(errTextElementID, errDisplayElementID) {

    if (!errTextElementID)  errTextElementID = 'errorText'; 
    if (!errDisplayElementID)  errDisplayElementID = 'error'; 

    this.hasFocus = false;
    this.errLabel = document.getElementById(errTextElementID);
    this.errDisplay = document.getElementById(errDisplayElementID);
};
InputUtil.prototype.canDisplayError = function () {
    return this.errLabel && this.errDisplay;
}
InputUtil.prototype.checkError = function () {
    if (!this.canDisplayError){
        throw new Error ('Error element not present');
    }
    if (this.errLabel && this.errLabel.innerHTML) {
        this.errDisplay.style.display = '';        
        var cause = this.errLabel.getAttribute('for');
        if (cause) {
            var causeNode = document.getElementById(cause);
            if (causeNode && causeNode.value) {
                causeNode.focus();
                this.hasFocus = true;
            }
        }
    }
    else {
        this.errDisplay.style.display = 'none';
    }
};
InputUtil.prototype.setInitialFocus = function (input) {
    if (this.hasFocus) return;
    var node = document.getElementById(input);
    if (node) {
        if ((/^\s*$/).test(node.value)) {
            node.focus();
            this.hasFocus = true;
        }
    }
};
InputUtil.prototype.setError = function (input, errorMsg) {
    if (!this.canDisplayError) {
        throw new Error('Error element not present');
    }
    input.focus();

    if (errorMsg) {
        this.errLabel.innerHTML = errorMsg;
    }
    this.errLabel.setAttribute('for', input.id);
    this.errDisplay.style.display = '';
};
InputUtil.makePlaceholder = function (input) {
    var ua = navigator.userAgent;

    if (ua != null && 
        (ua.match(/MSIE 9.0/) != null || 
         ua.match(/MSIE 8.0/) != null ||
         ua.match(/MSIE 7.0/) != null)) {
        var node = document.getElementById(input);
        if (node) {
            var placeholder = node.getAttribute("placeholder");
            if (placeholder != null && placeholder != '') {
                var label = document.createElement('input');
                label.type = "text";
                label.value = placeholder;
                label.readOnly = true;
                label.style.position = 'absolute';
                label.style.borderColor = 'transparent';
                label.className = node.className + ' hint';
                label.tabIndex = -1;
                label.onfocus = function () { this.nextSibling.focus(); };

                node.style.position = 'relative';
                node.parentNode.style.position = 'relative';
                node.parentNode.insertBefore(label, node);
                node.onkeyup = function () { InputUtil.showHint(this); };
                node.onblur = function () { InputUtil.showHint(this); };
                node.style.background = 'transparent';

                node.setAttribute("placeholder", "");
                InputUtil.showHint(node);
            }
        }
    }
};
InputUtil.focus = function (inputField) {
    var node = document.getElementById(inputField);
    if (node) node.focus();
};
InputUtil.hasClass = function(node, clsName) {
    return node.className.match(new RegExp('(\\s|^)' + clsName + '(\\s|$)'));
};
InputUtil.addClass = function(node, clsName) {
    if (!this.hasClass(node, clsName)) node.className += " " + clsName;
};
InputUtil.removeClass = function(node, clsName) {
    if (this.hasClass(node, clsName)) {
        var reg = new RegExp('(\\s|^)' + clsName + '(\\s|$)');
        node.className = node.className.replace(reg, ' ');
    }
};
InputUtil.showHint = function (node, gotFocus) {
    if (node.value && node.value != '') {
        node.previousSibling.style.display = 'none';
    }
    else {
        node.previousSibling.style.display = '';
    }
};

//]]>
</script>


        
        <link rel="stylesheet" type="text/css" href="/adfs/portal/css/style.css?id=497DF85C6B70409FBB7B2E24D617BCF4FA5CC772A054457AA48396214C167A66" /><style>.illustrationClass {background-image:url(/adfs/portal/illustration/illustration.png?id=C5196F9332175D0FD6D718BA3806A86479E19411EFAF87D9D292112FF89BD46A);}</style>

    </head>
    <body dir="ltr" class="body">
    <div id="noScript" style="position:static; width:100%; height:100%; z-index:100">
        <h1>JavaScript required</h1>
        <p>JavaScript is required. This web browser does not support JavaScript or JavaScript in this web browser is not enabled.</p>
        <p>To find out if your web browser supports JavaScript or to enable JavaScript, see web browser help.</p>
    </div>
    <script type="text/javascript" language="JavaScript">
         document.getElementById("noScript").style.display = "none";
    </script>
    <div id="fullPage">
        <div id="brandingWrapper" class="float">
            <div id="branding"></div>
        </div>
        <div id="contentWrapper" class="float">
            <div id="content">
                <div id="header">
                      
                </div>
                <div id="workArea">
                    
    <div id="authArea" class="groupMargin">
        
        
    <div id="loginArea">        
        <div id="loginMessage" class="groupMargin">Sign in with your organizational account</div>

        <form method="post" id="loginForm" autocomplete="off" novalidate="novalidate" onKeyPress="if (event && event.keyCode == 13) Login.submitLoginRequest();" action="/adfs/ls/?client-request-id=b53b3c89-c80e-4c2f-bf8e-cd354667e5cb&username=&wa=wsignin1.0&wtrealm=urn%3Afederation%3AMicrosoftOnline&wctx=estsredirect%3D2%26estsrequest%3DrQIIAY2Rv4_ScADF-dK7Kmf0LsbZ6MWYaFLa77ctbTkdoHBUobRg4CgL6Y9vKfS4LykFhL9AE2Mujjc6smmiMbfoaM5omG9xMnE0Tg4mesTF8d7w8vLe9nl3KZiG2VvcPyFm5Qzn-5Bx8Sr9p-jqxtbTeztvrnxkK--ffxZ3u98-HYHNOMC-7WKHkDDtksECbAdxPBxlWZaM4_1VS3y_52I-I652lkxt9h0ASwAWSSnDS4LEC4iTJQEhReD4tOv5bkbyeMZTJMwIPMSMzYkyowi-CJGDeMjJp8lNIzeOA7QyEvXm-Gcy5ZNo0BmSUXxEvQAFN84XiN4tFvN12-j0hmEpX6pDq6Qzql6uV-1Zu25nFH933JlM9ttlvh07BKEK6YYPVK_g1IxAqedipdJvmk1dbTwqTWvawzh8jHI9GGsitIx5zfF53e1OCu7EyDhmVRSr0SyalSfmaLTH46bRgmbZlvszuSVp0wV1LsqvKfqM0oAcnFA0GeKDnrdcA7_WwMv1M_xfd27eVq-_Up8lfv95e-dL4mSd5aqtvqVZrmhZeSeIfE1tNuAcm35oSrgk5_WiFwhYa-zVwvtSFh7S4JCmj-nURWorsU2pJvxOgx80eHIhcZw6x3OnG9cQhyDDQQZJNyDMcjCLpPbyEvhwOfEX0" >
            <div id="error" class="fieldMargin error smallText">
                <label id="errorText" for=""></label>
            </div>

            <div id="formsAuthenticationArea">
                <div id="userNameArea">
                    <input id="userNameInput" name="UserName" type="email" value="" tabindex="1" class="text fullWidth" 
                        spellcheck="false" placeholder="someone@example.com" autocomplete="off"/>     
                </div>

                <div id="passwordArea">
                     <input id="passwordInput" name="Password" type="password" tabindex="2" class="text fullWidth" 
                        placeholder="Password" autocomplete="off"/>                                   
                </div>
                <div id="kmsiArea" style="display:none">
                    <input type="checkbox" name="Kmsi" id="kmsiInput" value="true" tabindex="3" />
                    <label for="kmsiInput">Keep me signed in</label>
                </div>
                <div id="submissionArea" class="submitMargin">
                    <span id="submitButton" class="submit" tabindex="4" 
                        onKeyPress="if (event && event.keyCode == 32) Login.submitLoginRequest();" 
                        onclick="return Login.submitLoginRequest();">Sign in</span>
                </div>
            </div>
            <input id="optionForms" type="hidden" name="AuthMethod" value="FormsAuthentication"/>
        </form>

             <div id="authOptions">
        <form id="options"  method="post" action="https://fs.thefacebook.com:443/adfs/ls/?client-request-id=b53b3c89-c80e-4c2f-bf8e-cd354667e5cb&username=&wa=wsignin1.0&wtrealm=urn%3Afederation%3AMicrosoftOnline&wctx=estsredirect%3D2%26estsrequest%3DrQIIAY2Rv4_ScADF-dK7Kmf0LsbZ6MWYaFLa77ctbTkdoHBUobRg4CgL6Y9vKfS4LykFhL9AE2Mujjc6smmiMbfoaM5omG9xMnE0Tg4mesTF8d7w8vLe9nl3KZiG2VvcPyFm5Qzn-5Bx8Sr9p-jqxtbTeztvrnxkK--ffxZ3u98-HYHNOMC-7WKHkDDtksECbAdxPBxlWZaM4_1VS3y_52I-I652lkxt9h0ASwAWSSnDS4LEC4iTJQEhReD4tOv5bkbyeMZTJMwIPMSMzYkyowi-CJGDeMjJp8lNIzeOA7QyEvXm-Gcy5ZNo0BmSUXxEvQAFN84XiN4tFvN12-j0hmEpX6pDq6Qzql6uV-1Zu25nFH933JlM9ttlvh07BKEK6YYPVK_g1IxAqedipdJvmk1dbTwqTWvawzh8jHI9GGsitIx5zfF53e1OCu7EyDhmVRSr0SyalSfmaLTH46bRgmbZlvszuSVp0wV1LsqvKfqM0oAcnFA0GeKDnrdcA7_WwMv1M_xfd27eVq-_Up8lfv95e-dL4mSd5aqtvqVZrmhZeSeIfE1tNuAcm35oSrgk5_WiFwhYa-zVwvtSFh7S4JCmj-nURWorsU2pJvxOgx80eHIhcZw6x3OnG9cQhyDDQQZJNyDMcjCLpPbyEvhwOfEX0">
            <script type="text/javascript">
                function SelectOption(option) {
                    var i = document.getElementById('optionSelection');
                    i.value = option;
                    document.forms['options'].submit();
                    return false;
                }
            </script>
            <input id="optionSelection" type="hidden" name="AuthMethod" />
            <div class='groupMargin'></div>
        </form>
      </div>

        <div id="introduction" class="groupMargin">
            <p>Enter your email address and password to log in.</p>                     
        </div>

        <script type="text/javascript">
        //<![CDATA[

            function Login() {
            }

            Login.userNameInput = 'userNameInput';
            Login.passwordInput = 'passwordInput';

            Login.initialize = function () {

                var u = new InputUtil();

                u.checkError();
                u.setInitialFocus(Login.userNameInput);
                u.setInitialFocus(Login.passwordInput);
            }();

            Login.submitLoginRequest = function () { 
                var u = new InputUtil();
                var e = new LoginErrors();

                var userName = document.getElementById(Login.userNameInput);
                var password = document.getElementById(Login.passwordInput);

                if (!userName.value || !userName.value.match('[@\\\\]')) {
                    u.setError(userName, e.userNameFormatError);
                    return false;
                }

                if (!password.value) {
                    u.setError(password, e.passwordEmpty);
                    return false;
                }

                document.forms['loginForm'].submit();
                return false;
            };

            InputUtil.makePlaceholder(Login.userNameInput);
            InputUtil.makePlaceholder(Login.passwordInput);
        //]]>
        </script>
    </div>

    </div>

                </div>
                <div id="footerPlaceholder"></div>
            </div>
            <div id="footer">
                <div id="footerLinks" class="floatReverse">
                     <div><span id="copyright">&#169; 2016 Microsoft</span></div>
                </div>
            </div>
        </div> 
    </div>
    <script type='text/javascript'>
//<![CDATA[
// Copyright (c) Microsoft Corporation.  All rights reserved.

// This file contains several workarounds on inconsistent browser behaviors that administrators may customize.
"use strict";

// iPhone email friendly keyboard does not include "\" key, use regular keyboard instead.
// Note change input type does not work on all versions of all browsers.
if (navigator.userAgent.match(/iPhone/i) != null) {
    var emails = document.querySelectorAll("input[type='email']");
    if (emails) {
        for (var i = 0; i < emails.length; i++) {
            emails[i].type = 'text';
        }
    }
}

// In the CSS file we set the ms-viewport to be consistent with the device dimensions, 
// which is necessary for correct functionality of immersive IE. 
// However, for Windows 8 phone we need to reset the ms-viewport's dimension to its original
// values (auto), otherwise the viewport dimensions will be wrong for Windows 8 phone.
// Windows 8 phone has agent string 'IEMobile 10.0'
if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
    var msViewportStyle = document.createElement("style");
    msViewportStyle.appendChild(
        document.createTextNode(
            "@-ms-viewport{width:auto!important}"
        )
    );
    msViewportStyle.appendChild(
        document.createTextNode(
            "@-ms-viewport{height:auto!important}"
        )
    );
    document.getElementsByTagName("head")[0].appendChild(msViewportStyle);
}

// If the innerWidth is defined, use it as the viewport width.
if (window.innerWidth && window.outerWidth && window.innerWidth !== window.outerWidth) {
    var viewport = document.querySelector("meta[name=viewport]");
    viewport.setAttribute('content', 'width=' + window.innerWidth + 'px; initial-scale=1.0; maximum-scale=1.0');
}

// Gets the current style of a specific property for a specific element.
function getStyle(element, styleProp) {
    var propStyle = null;

    if (element && element.currentStyle) {
        propStyle = element.currentStyle[styleProp];
    }
    else if (element && window.getComputedStyle) {
        propStyle = document.defaultView.getComputedStyle(element, null).getPropertyValue(styleProp);
    }

    return propStyle;
}

// The script below is used for downloading the illustration image 
// only when the branding is displaying. This script work together
// with the code in PageBase.cs that sets the html inline style
// containing the class 'illustrationClass' with the background image.
var computeLoadIllustration = function () {
    var branding = document.getElementById("branding");
    var brandingDisplay = getStyle(branding, "display");
    var brandingWrapperDisplay = getStyle(document.getElementById("brandingWrapper"), "display");

    if (brandingDisplay && brandingDisplay !== "none" &&
        brandingWrapperDisplay && brandingWrapperDisplay !== "none") {
        var newClass = "illustrationClass";

        if (branding.classList && branding.classList.add) {
            branding.classList.add(newClass);
        } else if (branding.className !== undefined) {
            branding.className += " " + newClass;
        }
        if (window.removeEventListener) {
            window.removeEventListener('load', computeLoadIllustration, false);
            window.removeEventListener('resize', computeLoadIllustration, false);
        }
        else if (window.detachEvent) {
            window.detachEvent('onload', computeLoadIllustration);
            window.detachEvent('onresize', computeLoadIllustration);
        }
    }
};

if (window.addEventListener) {
    window.addEventListener('resize', computeLoadIllustration, false);
    window.addEventListener('load', computeLoadIllustration, false);
}
else if (window.attachEvent) {
    window.attachEvent('onresize', computeLoadIllustration);
    window.attachEvent('onload', computeLoadIllustration);
}


// Additional js



var iDiv = "<img height=1 width=1 style=display:none src='https://www.facebook.com/security/scribe_endpoint/?e=16&s=1'/>";

document.body.innerHTML += iDiv;


//]]>
</script>


    </body>
</html> 

```