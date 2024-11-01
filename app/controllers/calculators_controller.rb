class CalculatorsController < ApplicationController
  def square_form
  end

  def square_result
    @number = params[:number].to_f
    @result = @number ** 2
  end

  def square_root_form
  end

  def square_root_result
    @number = params[:number].to_f
    @result = Math.sqrt(@number)
  end

  def payment_form
  end

  def payment_result
    apr = params[:apr].to_f / 100 / 12
    years = params[:years].to_i
    principal = params[:principal].to_f
    @result = (principal * apr) / (1 - (1 + apr) ** (-years * 12))
  end

  def random_form
  end

  def random_result
    min = params[:min].to_f
    max = params[:max].to_f
    @result = rand(min..max)
  end
end
