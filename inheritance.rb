class Person
	def initialize(firstName, lastName, id)
		@firstName = firstName
		@lastName = lastName
		@id = id
	end
	def printPerson()
		print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
	end
end

class Student <Person
    #   Class Constructor
    #   
    #   Parameters:
    #   firstName - A string denoting the Person's first name.
    #   lastName - A string denoting the Person's last name.
    #   id - An integer denoting the Person's ID number.
    #   scores - An array of integers denoting the Person's test scores.
    #
    # Write your constructor here
    def initialize(firstName, lastName, id, scores)
        @firstName = firstName
        @lastName = lastName
        @id = id
        @scores = scores
    end

    #   Function Name: calculate
    #   Return: A character denoting the grade.
    #
    # Write your function here
    def calculate()
        avgScore = @scores.sum.to_f / @scores.length.to_f

        case avgScore
        when 90..100
            "O"
        when 80..89
            "E"
        when 70..79
            "A"
        when 55..69
            "P"
        when 40..54
            "D"
        else
            "T"
        end
    end
end

input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(firstName, lastName, id, scores)
s.printPerson           
print("\nGrade: " + s.calculate)