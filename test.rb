class Test
  # метод приветствующий пользователя
  def say_hello
    puts "Введите ваше имя :"
    name = STDIN.gets.chomp.to_s
    name = "Таинственная Персона" if (name == "")
    puts "Добрый день, #{name}! Ответьте пожалуйста честно на несколько вопросов, чтобы узнать кое-что о себе."
  end

  # метод задающий пользователю вопросы и возвращающий количество набранных балов
  def test_passing(questions)
    @amount_of_points = 0
    puts "Варианты ответов: 0 - нет, 1 - иногда, 2 - да"
    for item in questions
      puts item
      answer = STDIN.gets.chomp.to_i
      if answer == 1
        @amount_of_points +=1
      elsif answer == 2
        @amount_of_points +=2
      end
    end
  end

  # метод выводящий на экран результат теста
  def result_printer(results)
    puts "Вы набрали : " + @amount_of_points.to_s + " баллов" + " ,и ваш результат: "
    case @amount_of_points
    when 30..31
      puts results[0]
    when 25..29
      puts results[1]
    when 19..24
      puts results[2]
    when 14..18
      puts results[3]
    when 9..13
      puts results[4]
    when 4..8
      puts results[5]
    when 0..3
      puts results[6]
    end
  end
end