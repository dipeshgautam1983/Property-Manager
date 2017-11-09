module TicketsHelper
	
	def my_tickets(tickets, me )
		
		mytickets = get_my_tickets(tickets, me)

		table = 
		"<div class='table-responsive'><table class='table'>
		  <thead>
		    <tr>
		      <th>Description</th>
		      <th>Status</th>
		      <th>Agentcomment</th>
		      <th colspan='3'></th>
		    </tr>
		  </thead>
		  <tbody>"
		    mytickets.each do |ticket|
		    	rowclass = " class='active'"
		    	if ticket.status == "Assigned"
		    		rowclass = " class='warning'"
		    	end
		      table += "<tr #{rowclass}>"
		        table += "<td>#{ticket.description}</td>"
		        table += "<td>#{ticket.status}</td>"
		        table += "<td>#{ticket.agentcomment}</td>"
		        table += "<td>#{(link_to 'Show', ticket)}</td>"
		        table += "<td>#{link_to 'Edit', edit_ticket_path(ticket)}</td>"
		        if me.type == admin
		        	table += "<td>#{(link_to 'Destroy', ticket, method: :delete, data: { confirm: 'Are you sure?' })}</td>"
		    	end
		      table += "</tr>"
		    end
		  table += "</tbody>"
		table += "</table></div>"

		if me.type == admin or me.type == resident
			table += "<br>#{link_to 'New Ticket', new_ticket_path}"
		end
		return table.html_safe
	end

	def get_my_tickets(tickets, user)
		if user && user.type == admin
			return tickets
		elsif user
			return user.tickets
		end
			
	end

	def get_my_active_tickets(user)

		if user &&  user.type == admin
			return Ticket.where(status: "Assigned")
		elsif user
			return user.tickets.where(status: "Assigned")
		end
	end

	def count_my_active_tickets(user)
		active_tickets = get_my_active_tickets(user)
		if active_tickets 
			return active_tickets.count
		else
			return nil
		end
	end
end
