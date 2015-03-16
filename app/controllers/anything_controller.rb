class AnythingController < ApplicationController

  def index
    #Section 1.1
    # Section 1.1.1 find Find the client record with :id=2
    client = Client.find(2)
    # Section 1.1.2 take Retrives 2records with no implicit order
    client = Client.take(2)
    # Section 1.1.3 first Retrives the first record in the table
    client = Client.first
    # Section 1.1.4 last Retrives the last 3 records in the table
    client = Client.last(3)
    # Section 1.1.5 find_by retrive record using find_by
    Client.find_by(first_name: "Davonte")

    # Section 2
    # Section 2.2 Array condition
    # Retrive records in an array where orders_count = 6
    Client.where("orders_count = ?", 6)

    # Section 2.3.1 Equality condition
    Client.where(orders_count: true)

    # Section 2.3.2 Range condition
    # Retrive all records created since yesterday. Had o add time to the end date of the range
    # as the actuall time is not in line with the time calulation
    Client.where(created_at: (Time.now.midnight - 1.day)..Time.now.midnight + 1.day)

    # Section 2.3.3 Subset condition
    # Retrive records using the IN expression for SQL All records with
    # orders_count of 1 , 3 , or 5 are returned
    Client.where(orders_count: [1,3,5])
    # Section 2.4 Similiar to the IN expression but return the records NOT IN the list
    Client.where.not(orders_count: [1,3,5])

    # Section 3 Ordering
    # Retrive records in created_at date order
    Client.order(:created_at)
    # Retrive records for created_at date in descending order
    Client.order(created_at: :desc)

    # Section 4 Selecting specific fields
    # Retrive record columns by specifing the column
    # Retrive only the first_name of each record
    Client.select("first_name")
    # Variation of above by adding 2 columns to the query
    Client.select("first_name, orders_count")

    # Retrive the records using DISTINCT expression.
    Client.select(:orders_count).distinct

    # Remove the unique constraint and return all records
    query = Client.select(:orders_count).distinct
    query.distinct(false)

    # Section 5 Limit and Offset
    # Limit - Specify only return a number of records in this case 2 records
    Client.limit(2)

    # Offset - Retrive 3 records but start at record client id = 10
    Client.limit(3).offset(10)
  end

end
