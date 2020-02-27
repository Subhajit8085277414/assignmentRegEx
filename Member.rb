class  Member
    def initialize(id,name,type)
        @id=id
        @name=name
        @type=type
        @count=0
        @values=[]
        @subarray=[]
    end
    attr_accessor :id,:name,:type,:values
    def display
        puts "id => #{@id}" 
        puts "name =>#{@name}" 
        puts "type =>#{@type}"
    end
    def BorrowDescription(bookarray)
       puts "Borrowing book" 
       bookarray.each {|n| puts " name of the book  :#{n.name} ----- issuedate:#{n.issuedate} --------return date #{n.returndate}"
       @count=@count+1}
       



            
    end
    def printcount
    puts @count    
    end
end


########################################################################################################################
class Book
    
        def initialize(name,author,pages,issuedate,returndate)
            @name=name
            @author=author
            @pages=pages
            @issuedate=issuedate
            @returndate=returndate
            
            
            
        end
        def name
            @name
        end
        def name=(name)
            @name=name
        end

        def author
            @author
        end
        def author=(author)
            @author=name
        end

        def pages
        @pages
        end
        def pages=(pages)
            @pages=pages 
        end

        attr_accessor :issuedate,:returndate
        def self.read_fun
            puts "Reading"
        end

       
    end
    #############################################################################################################

   
    # newbook=Book.new("Rev 2020","ChetanBhagat",200)
    # newbook.issuedate="28-02-2020"
    # newbook.returndate="28-01-2020"
    # puts "#{@returndate}"  #diiferent output
    # puts newbook.returndate
    member1=Member.new(1,"Sumit","Teacher")
   
    books = []
    @i=0
    #############################################################################################################
    loop do
    
    puts"Enter the name of the book details :name, author,pages"
    name1=gets.chomp
    author1=gets.chomp
    page1=gets.chomp
    issuedate1=gets.chomp
    returndate1=gets.chomp
    
    
    books[@i] = Book.new(name1,author1,page1,issuedate1,returndate1)
    @i+=1
    #member1.BorrowDescription(books)
    puts "Enter n if u dont want to enter book details"
    $choice=gets.chomp
    break if ($choice=='n')
    end
    # member1.printcount
    member1.display
    puts "The no of books borrowed = #{@i}"
    member1.BorrowDescription(books)
    


