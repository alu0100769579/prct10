
Node = Struct.new(:value, :next)
Node_ = Struct.new(:prev, :value, :next)

class   List
   
    def initialize ()
           
        @elemento = Node.new(nil)
    end
    
    def elemento
        
        @elemento
    end   
    
    def insertar_elemento(node)
        
        if @elemento != nil
            
            node.next = @elemento
            @elemento = node
        end
    end
    
    def extraer_elemento 
        
        aux = @elemento
        @elemento = @elemento.next
        aux.value
    end    
    
end

class Lista_doble
   
   include Enumerable
   
   attr_accessor :head, :tail
   
   def empty?
      
      @head == nil
   end
   
   def initialize()
      
      @head = nil
      @tail = nil 
   end
   
   def insertar_elemento(node)
      
      @node =  Node_.new(nil, node, nil)
      
      if @tail == nil
         @head = @node
         @tail = @node
         #@node
      else
          @node.next = @head
          @head.prev = @node
          @head = @node
          #@node
      end
      
   end
   
   def extraer_elemento
       
       @node = Node_.new(nil, @head.value, nil)
       
       @head = @head.next
       @head.prev = nil
       return @node
        
       #node = @head
       #if @head.next == nil
      #     @head = nil
     #  else
    #       @head = @head.next
       #end
       #return node
       
       #node = @head
       #@head = @head.next
       
       #node.next = nil
       #node.prev = nil
       
       #if @head == nil
        #  @tail = nil
       #end
       
       #return node
   end
   
   def each
       enum = @head
       while (enum != nil) 
            yield enum.value
            enum = enum.next
       end
   end
   
    
end