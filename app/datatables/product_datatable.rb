class ProductDatatable < AjaxDatatablesRails::Base

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
    }
  end

  def data
    records.map do |record|
      {
       record.name,
       record.description,
       record.price
      }
    end
  end

  def sortable_columns
    # list columns inside the Array in string dot notation.
    # Example: 'users.name'
    @sortable_columns ||= ['products.name' ,'products.description', 'products.price']
  end

  def searchable_columns
    # list columns inside the Array in string dot notation.
    # Example: 'users.name'
    @searchable_columns ||= ['products.name', 'products.description', 'products.price']
  end

  private

  def get_raw_records
    Product.all
  end

  # ==== These methods represent the basic operations to perform on records
  # and feel free to override them

  # def filter_records(records)
  # end

  # def sort_records(records)
  # end

  # def paginate_records(records)
  # end

  # ==== Insert 'presenter'-like methods below if necessary
end
