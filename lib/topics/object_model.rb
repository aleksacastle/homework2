# frozen_string_literal: true

# exercise object model
module ObjectModel
  # exercise Linux friendly role
  module LinuxFriendly
    def fork_process
      super
    end
  end
  # Desktop class
  class Desktop
    include LinuxFriendly
    
    def fork_process
      'Parent: allocate memory'
    end

    def mine_bitcoins
      inspect
    end
  end
  # exercise Laptop model
  class Laptop < Desktop
    prepend LinuxFriendly
  end
end
