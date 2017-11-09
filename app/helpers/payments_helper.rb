module PaymentsHelper

  def my_payments(payments, me )
    mypayments = get_my_payments(payments, me)
    table = 

    "<table>
      <thead>
        <tr>
          <th>Amount</th>
          <th>Type</th>
          <th>Paymentdate</th>
          <th>Paymentstatus</th>
          <th>Duemonth</th>
          <th>Comment</th>
          <th colspan='3'></th>
        </tr>
      </thead>
      <tbody>"
        mypayments.each do |payment| 
          table += "<tr>"
            table += "<td>#{payment.amount}</td>"
            table += "<td>#{payment.type}</td>"
            table += "<td>#{payment.paymentdate}</td>"
            table += "<td>#{payment.paymentstatus}</td>"
            table += "<td>#{payment.duemonth}</td>"
            table += "<td>#{payment.comment}</td>"
            table += "<td>#{link_to 'Show', payment}</td>"
            table += "<td>#{ link_to 'Edit', edit_payment_path(payment)}</td>"
            table += "<td>#{ link_to 'Destroy', payment, method: :delete, data: { confirm: 'Are you sure?' } }</td>"
          table += "</tr>"
        end 
      table += "</tbody>"
    table += "</table>"
    return table.html_safe
  end

  def get_my_payments(payments, user)
  		if user && user.type == admin
  			return get_rent(user)
  		elsif user  && user.type == resident
  			return get_rent(user)
  		end	
  end

  def get_rent(user)
    if (user.type = resident)
      return user.rents

    elsif (user.type = admin)
      return Payment.where(type: "Rent")
    end
  end
end

