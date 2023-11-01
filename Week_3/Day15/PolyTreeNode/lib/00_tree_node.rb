class PolyTreeNode

  attr_reader :parent, :children, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(node)
    @parent.children.delete(self) unless @parent == nil
    @parent = node
    node.children << self unless node == nil
  end

  def add_child(node)
    node.parent = self
  end

  def remove_child(node)
    raise "Node is not a child" if !self.children.include?(node)
    node.parent = nil
  end

  def dfs(target)
    return self if self.value === target
    children.each do |child|
      result = child.dfs(target)
      return result unless result.nil?
    end
    nil
  end

  def bfs(target)
    return self if self.value === target
    nodes = [self]
  end

end