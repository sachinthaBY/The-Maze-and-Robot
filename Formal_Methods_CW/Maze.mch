/* Maze
 * Author: ASUS
 * Creation date: 1/7/2023
 */
MACHINE
    Maze
    
CONSTANTS
    MAZE_WIDTH,
    MAZE_HEIGHT,
    CELL,
    INVALID_CELLS,
    EXIT
    
PROPERTIES
    MAZE_WIDTH <: NAT &
    MAZE_WIDTH = 1..7 &
    MAZE_HEIGHT <: NAT &    
    MAZE_HEIGHT = 1..5 &
    CELL : NAT<->NAT &
    CELL = MAZE_WIDTH*MAZE_HEIGHT &
    EXIT : CELL &
    EXIT = (1|->5) &
    INVALID_CELLS : POW(CELL) &
    INVALID_CELLS ={(1|->3), (2|->1), (2|->3), (2|->5), (3|->3),  (4|->2), (4|->3), (4|->4), (6|->1), (6|->2), (6|->4), (7|->4)}


END
