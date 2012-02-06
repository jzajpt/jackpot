module Jackpot 

  # Small adapter for Active Merchant gateways Jackpot supports
  class Gateway

    def initialize(gateway)
      @gateway = gateway
    end 

    def store(card_hash)
      @gateway.store card_hash
    end 


    def authorize(amount, card_or_token)
      @gateway.authorize(amount, card_or_token)
    end 
    

    def capture(amount, authorization_code)
      @gateway.capture(amount, authorization_code)
    end 

  end 

end 