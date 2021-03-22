# frozen_string_literal: true

class CodeInvaders
  class << self
    include InitialData

    def run
      invaders = [ImageMatrix.new(INVADER1), ImageMatrix.new(INVADER2)]
      radar = ImageMatrix.new(RADAR)

      output_service = OutputService.new(invaders, radar)

      output_service.print_results
    end
  end
end
