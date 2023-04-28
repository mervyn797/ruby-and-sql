# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************



# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
new_company = Company.new
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "Apple.com"

new_company.save

new_company2 = Company.new
new_company2["name"] = "Amazon"
new_company2["city"] = "Seattle"
new_company2["state"] = "WA"
new_company2["url"] = "amazon.com"

new_company2.save



puts "There are #{Company.all.count} companies in the table"
# 3. query companies table to find all row with California company

#ca_companies = Company.where({"state" => "CA"})
#puts ca_companies.inspect

apple = Company.find_by({"name"=>"Apple"})
#apple["name"]= "Apple Computer, Inc"
#apple.save
puts apple.inspect

# 4. query companies table to find single row for Apple

# 5. read a row's column value

# 6. update a row's column value

# 7. delete a row

#apple.destroy
