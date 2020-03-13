# Examples inspired by U. S. National Organic Standards

ORGANIC_PRODUCE = [
  "Strawberries",
  "Potatoes",
  "Grapes",
  "Avocadoes",
  "Asparagus"
]

CONVENTIONAL_PRODUCE = [
  "Grapefruit",
  "Pineapple",
  "Oranges",
  "Watermelon",
  "Eggplant"
]
#######################################3
=begin
Build an array that contains both of the above arrays
# This matrix will represent a produce storage room
# Organic standards require that organic products be stored ABOVE conventional, not the other way around
# Make sure conventional produce is first, on the 'zeroth' / 'bottom' shelf
=end
def assembled_matrix
    produce_storage_room=[CONVENTIONAL_PRODUCE,ORGANIC_PRODUCE]
    produce_storage_room
end
###############################
=begin
# Using Array literal syntax only, build another nested array that
# uses the arrays of conventional and organic produce as before.
# However, this time, sort each internal array alphabetically by the first character
# the sorted_matrix method returns a nested array made from two constants with sorted elements
=end
def sorted_matrix
  sorted_matrix=[CONVENTIONAL_PRODUCE.sort,ORGANIC_PRODUCE.sort]
=begin
或者也可以直接写出来
  sorted_matrix = [
  ["Eggplant", "Grapefruit", "Oranges", "Pineapple", "Watermelon"],
  ["Asparagus", "Avocadoes", "Grapes", "Potatoes", "Strawberries"]
]
=end
end
#################################################
# Given any matrix (array of arrays), a row index and a column index,
# Return the matrix's content at that row and and column
def matrix_lookup(matrix, row, column)
  matrix[row][column]
end
#################################################
# Given any matrix (array of arrays), a row index and a column index,
# Update the matrix location at that row and column to have the value of new_value
# Return the updated matrix
def matrix_update(matrix, row, column, new_value)
  matrix[row][column]=new_value
  matrix
end
