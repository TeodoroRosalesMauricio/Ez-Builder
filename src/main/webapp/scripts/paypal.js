/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 


<div id="smart-button-container">
    <div style="text-align: center;">
        <div id="paypal-button-container"></div>
    </div>
</div>
        <script src="https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=MXN" data-sdk-integration-source="button-factory"></script>
<script>

  function initPayPalButton() {
        paypal.Buttons({
        style: {
        shape: 'pill',
                color: 'black',
                layout: 'vertical',
                label: 'checkout',
        },
        
       
                createOrder: function(data, actions) {
                return actions.order.create({
                purchase_units: [{"description":"prueba", "amount":{"currency_code":"MXN", "value":100.1, "breakdown":{"item_total":{"currency_code":"MXN", "value":0.1}, "shipping":{"currency_code":"MXN", "value":100}, "tax_total":{"currency_code":"MXN", "value":0}}}}]
                });
                },
                onApprove: function(data, actions) {
                return actions.order.capture().then(function(orderData) {

                // Full available details
                console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
                        // Show a success message within this page, e.g.
                        const element = document.getElementById('paypal-button-container');
                        element.innerHTML = '';
                        element.innerHTML = '<h3>Thank you for your payment!</h3>';
                        // Or go to another URL:  actions.redirect('thank_you.html');
                        
                        actions.redirect('thank_you.html');

                });
                },
                onError: function(err) {
                console.log(err);
                }
        }).render('#paypal-button-container');
  }
  initPayPalButton();
</script>*/