/* Robot
 * Author: ASUS
 * Creation date: 1/7/2023
 */
MACHINE
    Robot
    
SEES
    Maze
    
DEFINITIONS
    PANEL == POW(CELL);
    ROUTE_SEQ == seq(CELL);
    MOVE_SEQ == seq(MOVEMENT);
    SET_PREF_MININT == -3;
    SET_PREF_MAXINT == 10
    
SETS
    REPORT = {CAN_MOVE, CANNOT_MOVE_WALL_DETECTED,
        CANNOT_MOVE_OUT_OF_MAZE, CAN_TELEPORT,
        CANT_TELEPORT_TO_EXIT_SQUARE, YES, NO};
    MOVEMENT = {NORTH, SOUTH, EAST, WEST, TELEPORT}
    
VARIABLES
    panel,
    visitedCells,
    robot_x_Position,
    robot_y_Position,
    routes,
    movements
    
INVARIANT
    panel : PANEL &
    visitedCells : PANEL &
    robot_x_Position : NAT &
    robot_y_Position: NAT &
    routes : ROUTE_SEQ &
    movements : MOVE_SEQ
    
INITIALISATION
    robot_x_Position, robot_y_Position, panel, visitedCells := 1, 1, (MAZE_WIDTH) *
    (MAZE_HEIGHT), {} || routes, movements := [(1 |-> 1)], []
    
OPERATIONS
/*------------MOVE NORTH-----------*/
    report <-- MoveNorth =
    PRE
        report : REPORT
    THEN
        IF    
            ((robot_x_Position |-> succ(robot_y_Position)) : panel & 
            (robot_x_Position |-> succ(robot_y_Position)) /: INVALID_CELLS)
        THEN
                 visitedCells := visitedCells \/ {(robot_x_Position |-> robot_y_Position)} ||
                 robot_y_Position := succ(robot_y_Position) ||
                 routes := routes ^ [(robot_x_Position |-> succ(robot_y_Position))] ||
                movements := movements ^ [NORTH] ||             
                 report := CAN_MOVE
        ELSIF    
                 ((robot_x_Position |-> succ(robot_y_Position)) : panel & 
                 (robot_x_Position |-> succ(robot_y_Position)) : INVALID_CELLS)
        THEN
                 report := CANNOT_MOVE_WALL_DETECTED
            ELSIF    
                     ((robot_x_Position |-> succ(robot_y_Position)) /: panel) 
            THEN
                     report := CANNOT_MOVE_OUT_OF_MAZE
            END
    END;

     
/*------------MOVE EAST-----------*/
    report <-- MoveEast =
    PRE
        report : REPORT
    THEN
        IF    
            ((succ(robot_x_Position) |-> robot_y_Position) : panel &
            (succ(robot_x_Position) |-> robot_y_Position) /: INVALID_CELLS)
        THEN    
                 visitedCells := visitedCells \/ {(robot_x_Position |-> robot_y_Position)} ||
                 robot_x_Position := succ(robot_x_Position) ||
                 routes := routes ^ [(succ(robot_x_Position) |-> robot_y_Position)] ||
                 movements := movements ^ [EAST] ||
                 report := CAN_MOVE
        ELSIF    
                 ((succ(robot_x_Position) |-> robot_y_Position) : panel & (succ(robot_x_Position) |-> robot_y_Position) : INVALID_CELLS)
        THEN
                 report := CANNOT_MOVE_WALL_DETECTED
             ELSIF    
                     ((succ(robot_x_Position) |-> robot_y_Position) /: panel)
             THEN
                     report := CANNOT_MOVE_OUT_OF_MAZE
             END
     END;
     
/*------------MOVE SOUTH-----------*/
    report <-- MoveSouth =
    PRE
        report : REPORT
    THEN
        IF    
            ((robot_x_Position |-> pred(robot_y_Position)) : panel &
            (robot_x_Position |-> pred(robot_y_Position)) /: INVALID_CELLS)
        THEN    
                 visitedCells := visitedCells \/ {(robot_x_Position |-> robot_y_Position)} ||
                 robot_y_Position := pred(robot_y_Position) ||
                 routes := routes ^ [(robot_x_Position |-> pred(robot_y_Position))] ||
                 movements := movements ^ [SOUTH] ||
                 report := CAN_MOVE
        ELSIF    
                 ((robot_x_Position |-> pred(robot_y_Position)) : panel & (robot_x_Position |-> pred(robot_y_Position)) : INVALID_CELLS)
        THEN
                 report := CANNOT_MOVE_WALL_DETECTED
             ELSIF    
                     ((robot_x_Position |-> pred(robot_y_Position)) /: panel)
             THEN
                     report := CANNOT_MOVE_OUT_OF_MAZE
             END
     END;

/*------------MOVE WEST-----------*/
    report <-- MoveWest =
    PRE
        report : REPORT
    THEN
        IF    
            ((pred(robot_x_Position) |-> robot_y_Position) : panel &
            (pred(robot_x_Position) |-> robot_y_Position) /: INVALID_CELLS)
        THEN    
                 visitedCells := visitedCells \/ {(robot_x_Position |-> robot_y_Position)} ||
                 robot_x_Position := pred(robot_x_Position) ||
                 routes := routes ^ [(pred(robot_x_Position) |-> robot_y_Position)] ||
                 movements := movements ^ [WEST] ||
                 report := CAN_MOVE
        ELSIF    
                 ((pred(robot_x_Position) |-> robot_y_Position) : panel & (pred(robot_x_Position) |-> robot_y_Position) : INVALID_CELLS)
        THEN
                 report := CANNOT_MOVE_WALL_DETECTED
             ELSIF    
                     ((pred(robot_x_Position) |-> robot_y_Position) /: panel)
             THEN
                     report := CANNOT_MOVE_OUT_OF_MAZE
             END
     END;
/*-----------FOUND EXIT------------*/
    report <-- foundExit = 
    PRE
        report : REPORT
    THEN
        IF
            ((robot_x_Position |-> robot_y_Position) = (1 |-> 5))
        THEN
            report := YES
        ELSE
            report := NO
        END
    END;

/*-----------GET POSITION------------*/
    position <-- getPosition = 
        BEGIN
            position := (robot_x_Position |-> robot_y_Position)
        END;
        
/*-----------TELEPORT------------*/ 

    report <-- Teleport(square_xx, square_yy) = 
        PRE
            square_xx : NAT &
            square_yy : NAT &
        (square_xx |-> square_yy):CELL &
            report : REPORT
        THEN
            IF (square_xx |-> square_yy) : panel & (square_xx |-> square_yy) /: INVALID_CELLS & (square_xx |-> square_yy) /= EXIT
            THEN
                visitedCells := visitedCells \/ {(robot_x_Position |-> robot_y_Position)} ||
                movements := movements ^ [TELEPORT] ||
                robot_x_Position := square_xx ||
                robot_y_Position := square_yy ||
                report := CAN_TELEPORT
            ELSE
                IF (square_xx |-> square_yy) = EXIT
                THEN
                    report := CANT_TELEPORT_TO_EXIT_SQUARE
                ELSIF (square_xx |-> square_yy) : INVALID_CELLS
                THEN                    
                    report := CANNOT_MOVE_WALL_DETECTED
                ELSE
                    report := CANNOT_MOVE_OUT_OF_MAZE
                END                
            END
        END;

/*-----------VISITED SQUARE------------*/ 
    report <-- visitedSquare(square_xx, square_yy) =
        PRE
            square_xx : NAT &
            square_yy : NAT &
            (square_xx |-> square_yy) : panel &
            report : REPORT
        THEN
            IF (square_xx |-> square_yy) : visitedCells
            THEN
                report := YES
            ELSE
                report := NO
            END            
        END;
/*-----------ROBOTS ROUTE------------*/ 
    robots_route <-- robotsRoute = 
        BEGIN
            robots_route := routes
        END;        


/*-----------ROBOTS MOVEMENTS------------*/ 
    robots_movements <-- robotsMovements = 
        BEGIN
            robots_movements := movements
        END;
        
/*-----------RESET------------*/
    position <-- resetPosition =
        BEGIN
            position := (1|->1) ||
            routes := [] ||
            visitedCells := []
        END

END
