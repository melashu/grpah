class Graph
  attr_reader :adj
  def initialize
    @adj = {}
  end

  def add_vertex(vertex)
    @adj[vertex] = [] 
  end

  def add_connection(vertex1, vertex2)
    @adj[vertex1] << vertex2 if @adj.key?(vertex1)
    @adj[vertex2] << vertex1 if @adj.key?(vertex2)
  end
end

graph = Graph.new
graph.add_vertex('A')
graph.add_vertex('A')
graph.add_vertex('B')
graph.add_vertex('C')
graph.add_vertex('D')
graph.add_vertex('E')

graph.add_connection('A', 'B')
graph.add_connection('A', 'C')
graph.add_connection('B', 'D')
graph.add_connection('C', 'D')
graph.add_connection('C', 'E')
graph.add_connection('D', 'E')
graph.add_connection('K', 'L')

print graph.adj
#
# { # A = [B, C]
# # B = [A, D]
# # C = [A, D, E]
# # D = [B, C, E]
# # E = [C, D]}