require 'zoho_invoice'
ZohoInvoice.authtoken="b2db6a9230bad468c1d34c99f0cc8b43"
client = ZohoInvoice::Client.new
invoice = ZohoInvoice::Invoice.all(client).first; nil
payments = ZohoInvoice::Payment.for_invoice(client, invoice.invoice_id)
ZohoInvoice::Invoice, i.invoice_id); puts "#{i.invoice_id} #{i.invoice_number} #{i.date} #{i.due_date} #{i.status} #{i.customer_name} #{payments.collect { |p| p.amount }.inject(0){|sum,x| sum + x }} of #{i.total}" }; nil

ZohoInvoice::Invoiceer_id).first.contact_persons.collect {|p| p['email']}.join(","); payments = ZohoInvoice::Payment.for_invoice(client, i.invoice_id); puts "#{i.invoice_id} #{i.invoice_number} #{i.customer_id} #{i.date} #{i.due_date} #{i.status} #{i.customer_name} #{payments.collect { |p| p.amount }.inject(0){|sum,x| sum + x }} of #{i.total} #{peeps}" }; nil

=begin
InvoiceId          Invoice Num CustomerId         IssueDate  DueDate    Stat CustomerName Paid of Total ContactEmails
480266000000866031 INV-0011162 480266000000506261 2016-05-28 2016-05-28 sent Gumtree/eBay 0 of 6038.0 yakaya@ebay.com,scucvara@ebay.com
480266000000866003 INV-0011161 480266000000506177 2016-05-29 2016-06-18 sent Canon Europe LTD (New 2nd Account 0 of 4540.0 rose.osae-quartey@canon-europe.com,gavin.bonthron@canon-europe.com
480266000000860037 INV-0011160 480266000000769027 2016-05-13 2016-05-13 paid AXA Wealth 2388.0 of 2388.0 online@axawealth.co.uk,james.wakefield@axawealth.co.uk
480266000000860001 INV-0011159 480266000000772013 2016-05-13 2016-05-13 overdue xanadu consultancy 0 of 747.0 ncampbell@xanaduconsultancy.com
480266000000858077 INV-0011158 480266000000219001 2016-05-12 2016-05-27 sent GEICO Corporation 0 of 3588.0 adoolittle@geico.com
480266000000858051 INV-0011157 480266000000133033 2016-05-12 2016-05-27 sent Beter Bed B.V 0 of 2390.0 crediteuren.facturen@beterbed.nl,niels.welten@beterbed.nl
480266000000857325 INV-0011156 480266000000857315 2016-05-12 2016-05-12 draft Roger Rodin 0 of 3038.0 roger.rodin@ge.com
480266000000858009 INV-0011155 480266000000858001 2016-05-11 2016-05-11 overdue Australian and New Zealand Institute of Insurance and Finance 0 of 2678.0 agibbs@anziif.com
480266000000850009 INV-0011154 480266000000466013 2016-04-29 2016-05-14 paid JFF.org 3638.0 of 3638.0 shatton@jff.org
480266000000849156 INV-0011153 480266000000319097 2016-04-28 2016-05-13 overdue HolidayCheck 0 of 1044.0 Eliska.Holl@holidaycheck.com,jan.mikulica@holidaycheck.com
480266000000849130 INV-0011152 480266000000032459 2016-04-28 2016-05-28 sent House of Kaizen 0 of 9288.0 paulo@houseofkaizen.com,matt@houseofkaizen.com,dgreis@houseofkaizen.com,mathilde@houseofkaizen.com
480266000000849104 INV-0011151 480266000000031293 2016-04-28 2016-04-28 paid Kaplan 1497.0 of 1497.0 apilonieta@kaplan.edu,joel.polsky@kaplan.edu,pmcleod@kaplan.edu
480266000000849076 INV-0011150 480266000000466045 2016-04-28 2016-04-28 overdue Booking.com 0 of 5988.0 royverkuylen@hotmail.com,gerben.langendijk@booking.com,justine.omoore@booking.com,joanna.taylor@booking.com,accounts.payable@booking.com
480266000000849046 INV-0011149 480266000000548417 2016-04-27 2016-05-17 overdue Jeswin Lopez 0 of 2441.0 jeswin.lopez@flydubai.com,Accountspayable@flydubai.com
480266000000848019 INV-0011148 480266000000848001 2016-04-26 2016-05-16 overdue Jen Howes 0 of 6588.0 jen.howes@digitaslbi.com

=end
