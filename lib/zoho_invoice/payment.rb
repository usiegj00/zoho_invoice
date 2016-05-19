module ZohoInvoice
  class Payment < Base

    READ_ATTRIBUTES = [
      :payment_id,
      :payment_number,
      :invoice_id,
      :invoice_payment_id,
      :payment_mode,
      :description,
      :date,
      :reference_number,
      :exchange_rate,
      :amount,
      :tax_amount_withheld,
      :is_single_invoice_payment
    ]

    define_object_attrs(*READ_ATTRIBUTES)

    def self.all(client)
      retrieve(client, '/api/v3/customerpayments')
    end

    def self.find(client, payment_id, options={})
      retrieve(client, "/api/v3/customerpayments/#{payment_id}", false)
    end

    def self.for_invoice(client, invoice_id)
      retrieve(client, "/api/v3/invoices/#{invoice_id}/payments")
    end

  end
end
