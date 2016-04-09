module ZohoInvoice
  class BankTransaction < Base

    READ_ATTRIBUTES = [
      :transaction_id,
      :date,
      :amount,
      :transaction_type,
      :status,
      :source,
      :account_id,
      :customer_id,
      :payee,
      :currency_id,
      :currency_code,
      :debit_or_credit,
      :offset_account_name,
      :reference_number,
      :imported_transaction_id
    ]

    define_object_attrs(*READ_ATTRIBUTES)

    def self.all(client)
      binding.pry
      retrieve(client, '/api/v3/banktransactions')
    end

    def self.find(client, id, options={})
      retrieve(client, "/api/v3/banktransactions/#{id}", false)
    end

  end
end
