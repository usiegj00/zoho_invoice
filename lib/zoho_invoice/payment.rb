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

    def self.all(client, invoice_id)
      retrieve(client, '/api/v3/customerpayments')
    end

    def self.for_invoice(client, invoice_id)
      retrieve(client, '/api/v3/#{invoice_id}/payments')
    end

    def self.find(client, id, options={})
      retrieve(client, "/api/v3/customerpayments/#{id}", false)
    end

  end
end
