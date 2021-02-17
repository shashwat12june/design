class Person
  attr_accessor :name, :age, :gender, :addresses, :account, :email_id, :phone_number

  # :name, :age, :gender, :addresses, :account, :email_id, :phone_number
end

class Account
  attr_accessor :username, :password, :type

  # :username, :password(encrypted), person_id

end

class Admin < Person
  #not implemented
end

class Driver < Person
  include Location

  def update_location

  end

  def accept_ride

  end

  def start_ride

  end

  def end_ride

  end

  def cancel_ride

  end

  private

  def valid_start_ride?

  end
end

class User < Person
  def search_vehicle(lat, long)

  end

  def book_ride

  end

  def cancel

  end
end

class Input
  def get_lat_long

  end
end

class Guest

end

class Ride

end

class NotifyDrivers < Notification
  #responsible for notifying all nearby drivers
  def notify

  end
end

class Notification
  def perform

  end
end


class Vehicle
  attr_accessor :name, :type, :lisence_number
end

class TransportService
  attr_accessor :lat, :long
  def initialize(lat, long)
    self.lat
    self.long = long
  end
end


# Persons
#   :id, :name, :age, :gender, :addresses, :account_id, :email_id, :phone_number, :created
#
# Accounts
#   id, :user_name, :password, :status[active, inactive, blocked, suspended], :type[driver, user]
#
# Locations
#    id, lat, long, driver_account_id
#
# vehicles
#    id, name, licence_number, account_id, status[verifyed, blocked]
#
# rides
#
#  id, account_id, source_id, destination, status[created, driver_assigned, started, completed, canceled]
#
#
#
#
#  person: 'shashwat', 12, 'daadad', 111
# person: 'manas', 12, 'daadad', 112
#
#   account:
#   111, usernae, dasdas, driver, active
#   112, usernae, dasdas, user, active
#
#   vehicle
#     audi, dadasdasd, 111, verified
# ride
# 
#  1, 112, banglore, hydrabad, completed, 111,
#
#
#   ratings
#     id, rated_by, rated_to, rating, rating_annotations[]
#     rating_annotations
#
#   1. raiting 1, unproffesioal



