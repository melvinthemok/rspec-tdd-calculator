class Calculator

  def initialize(result)
    @result = [result]
  end

  def result
    @result[0]
  end

  def reset(number)
    if @result.length == 1
      @result = @result.unshift(number)
    else
      @result = @result.unshift(number).pop
      end
  end

  def add(number)
    if @result.length == 1
      @result = @result.unshift(result + number)
    else
      @result.unshift(result + number).pop
      end
    self
  end

  def subtract(number)
    if @result.length == 1
      @result = @result.unshift(result - number)
    else
      @result.unshift(result - number).pop
      end
    self
  end

  def multiply(number)
    if @result.length == 1
      @result = @result.unshift(result * number)
    else
      @result.unshift(result * number).pop
      end
    self
  end

  def divide(number)
    if @result.length == 1
      @result = @result.unshift(result / number)
    else
      @result.unshift(result / number).pop
      end
    self
  end

  def operation(operator, number)
    case operator
    when 'add'
      self.add(number)
    when 'subtract'
      self.subtract(number)
    when 'multiply'
      self.multiply(number)
    when 'divide'
      self.divide(number)
    end
  end

  def undo
    temp = @result[0]
    @result[0] = @result[1]
    @result[1] = temp
  end

  def redo
    undo
  end

end
