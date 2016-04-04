module ZohoInvoice
  class Expense < Base

    READ_ATTRIBUTES = [
      :description,
      :reference_number,
      :date,
      :status,
      :account_name,
      :total,
      :customer_id,
      :customer_name,
      :vendor_id,
      :vendor_name,      
      :expense_id,
      :recurring_expense_id,
      :paid_through_account_id,
      :currency_id,
      :currency_code
    ]

    define_object_attrs(*READ_ATTRIBUTES)

    def self.all(client)
      retrieve(client, '/api/v3/expenses')
    end

    def self.find(client, id, options={})
      retrieve(client, "/api/v3/expenses/#{id}", false)
    end

  end
end
