Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Robot))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Robot))==(Machine(Robot));
  Level(Machine(Robot))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Robot)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Robot))==(Maze)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Robot))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Robot))==(?);
  List_Includes(Machine(Robot))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Robot))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Robot))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Robot))==(?);
  Context_List_Variables(Machine(Robot))==(?);
  Abstract_List_Variables(Machine(Robot))==(?);
  Local_List_Variables(Machine(Robot))==(movements,routes,robot_y_Position,robot_x_Position,visitedCells,panel);
  List_Variables(Machine(Robot))==(movements,routes,robot_y_Position,robot_x_Position,visitedCells,panel);
  External_List_Variables(Machine(Robot))==(movements,routes,robot_y_Position,robot_x_Position,visitedCells,panel)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Robot))==(?);
  Abstract_List_VisibleVariables(Machine(Robot))==(?);
  External_List_VisibleVariables(Machine(Robot))==(?);
  Expanded_List_VisibleVariables(Machine(Robot))==(?);
  List_VisibleVariables(Machine(Robot))==(?);
  Internal_List_VisibleVariables(Machine(Robot))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Robot))==(btrue);
  Gluing_List_Invariant(Machine(Robot))==(btrue);
  Expanded_List_Invariant(Machine(Robot))==(btrue);
  Abstract_List_Invariant(Machine(Robot))==(btrue);
  Context_List_Invariant(Machine(Robot))==(btrue);
  List_Invariant(Machine(Robot))==(panel: POW(CELL) & visitedCells: POW(CELL) & robot_x_Position: NAT & robot_y_Position: NAT & routes: seq(CELL) & movements: seq(MOVEMENT))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Robot))==(btrue);
  Abstract_List_Assertions(Machine(Robot))==(btrue);
  Context_List_Assertions(Machine(Robot))==(btrue);
  List_Assertions(Machine(Robot))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Robot))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Robot))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Robot))==(robot_x_Position,robot_y_Position,panel,visitedCells,routes,movements:=1,1,MAZE_WIDTH*MAZE_HEIGHT,{},[1|->1],<>);
  Context_List_Initialisation(Machine(Robot))==(skip);
  List_Initialisation(Machine(Robot))==(robot_x_Position,robot_y_Position,panel,visitedCells:=1,1,MAZE_WIDTH*MAZE_HEIGHT,{} || routes,movements:=[1|->1],<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Robot))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Robot),Machine(Maze))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Robot))==(btrue);
  List_Constraints(Machine(Robot))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Robot))==(MoveNorth,MoveEast,MoveSouth,MoveWest,foundExit,getPosition,Teleport,visitedSquare,robotsRoute,robotsMovements,resetPosition);
  List_Operations(Machine(Robot))==(MoveNorth,MoveEast,MoveSouth,MoveWest,foundExit,getPosition,Teleport,visitedSquare,robotsRoute,robotsMovements,resetPosition)
END
&
THEORY ListInputX IS
  List_Input(Machine(Robot),MoveNorth)==(?);
  List_Input(Machine(Robot),MoveEast)==(?);
  List_Input(Machine(Robot),MoveSouth)==(?);
  List_Input(Machine(Robot),MoveWest)==(?);
  List_Input(Machine(Robot),foundExit)==(?);
  List_Input(Machine(Robot),getPosition)==(?);
  List_Input(Machine(Robot),Teleport)==(square_xx,square_yy);
  List_Input(Machine(Robot),visitedSquare)==(square_xx,square_yy);
  List_Input(Machine(Robot),robotsRoute)==(?);
  List_Input(Machine(Robot),robotsMovements)==(?);
  List_Input(Machine(Robot),resetPosition)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Robot),MoveNorth)==(report);
  List_Output(Machine(Robot),MoveEast)==(report);
  List_Output(Machine(Robot),MoveSouth)==(report);
  List_Output(Machine(Robot),MoveWest)==(report);
  List_Output(Machine(Robot),foundExit)==(report);
  List_Output(Machine(Robot),getPosition)==(position);
  List_Output(Machine(Robot),Teleport)==(report);
  List_Output(Machine(Robot),visitedSquare)==(report);
  List_Output(Machine(Robot),robotsRoute)==(robots_route);
  List_Output(Machine(Robot),robotsMovements)==(robots_movements);
  List_Output(Machine(Robot),resetPosition)==(position)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Robot),MoveNorth)==(report <-- MoveNorth);
  List_Header(Machine(Robot),MoveEast)==(report <-- MoveEast);
  List_Header(Machine(Robot),MoveSouth)==(report <-- MoveSouth);
  List_Header(Machine(Robot),MoveWest)==(report <-- MoveWest);
  List_Header(Machine(Robot),foundExit)==(report <-- foundExit);
  List_Header(Machine(Robot),getPosition)==(position <-- getPosition);
  List_Header(Machine(Robot),Teleport)==(report <-- Teleport(square_xx,square_yy));
  List_Header(Machine(Robot),visitedSquare)==(report <-- visitedSquare(square_xx,square_yy));
  List_Header(Machine(Robot),robotsRoute)==(robots_route <-- robotsRoute);
  List_Header(Machine(Robot),robotsMovements)==(robots_movements <-- robotsMovements);
  List_Header(Machine(Robot),resetPosition)==(position <-- resetPosition)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Robot),MoveNorth)==(report: REPORT);
  List_Precondition(Machine(Robot),MoveEast)==(report: REPORT);
  List_Precondition(Machine(Robot),MoveSouth)==(report: REPORT);
  List_Precondition(Machine(Robot),MoveWest)==(report: REPORT);
  List_Precondition(Machine(Robot),foundExit)==(report: REPORT);
  List_Precondition(Machine(Robot),getPosition)==(btrue);
  List_Precondition(Machine(Robot),Teleport)==(square_xx: NAT & square_yy: NAT & square_xx|->square_yy: CELL & report: REPORT);
  List_Precondition(Machine(Robot),visitedSquare)==(square_xx: NAT & square_yy: NAT & square_xx|->square_yy: panel & report: REPORT);
  List_Precondition(Machine(Robot),robotsRoute)==(btrue);
  List_Precondition(Machine(Robot),robotsMovements)==(btrue);
  List_Precondition(Machine(Robot),resetPosition)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Robot),resetPosition)==(btrue | position,routes,visitedCells:=1|->1,<>,<>);
  Expanded_List_Substitution(Machine(Robot),robotsMovements)==(btrue | robots_movements:=movements);
  Expanded_List_Substitution(Machine(Robot),robotsRoute)==(btrue | robots_route:=routes);
  Expanded_List_Substitution(Machine(Robot),visitedSquare)==(square_xx: NAT & square_yy: NAT & square_xx|->square_yy: panel & report: REPORT | square_xx|->square_yy: visitedCells ==> report:=YES [] not(square_xx|->square_yy: visitedCells) ==> report:=NO);
  Expanded_List_Substitution(Machine(Robot),Teleport)==(square_xx: NAT & square_yy: NAT & square_xx|->square_yy: CELL & report: REPORT | square_xx|->square_yy: panel & square_xx|->square_yy/:INVALID_CELLS & square_xx|->square_yy/=EXIT ==> visitedCells,movements,robot_x_Position,robot_y_Position,report:=visitedCells\/{robot_x_Position|->robot_y_Position},movements^[TELEPORT],square_xx,square_yy,CAN_TELEPORT [] not(square_xx|->square_yy: panel & square_xx|->square_yy/:INVALID_CELLS & square_xx|->square_yy/=EXIT) ==> (square_xx|->square_yy = EXIT ==> report:=CANT_TELEPORT_TO_EXIT_SQUARE [] not(square_xx|->square_yy = EXIT) ==> (square_xx|->square_yy: INVALID_CELLS ==> report:=CANNOT_MOVE_WALL_DETECTED [] not(square_xx|->square_yy: INVALID_CELLS) ==> report:=CANNOT_MOVE_OUT_OF_MAZE)));
  Expanded_List_Substitution(Machine(Robot),getPosition)==(btrue | position:=robot_x_Position|->robot_y_Position);
  Expanded_List_Substitution(Machine(Robot),foundExit)==(report: REPORT | robot_x_Position|->robot_y_Position = 1|->5 ==> report:=YES [] not(robot_x_Position|->robot_y_Position = 1|->5) ==> report:=NO);
  Expanded_List_Substitution(Machine(Robot),MoveWest)==(report: REPORT | pred(robot_x_Position)|->robot_y_Position: panel & pred(robot_x_Position)|->robot_y_Position/:INVALID_CELLS ==> visitedCells,robot_x_Position,routes,movements,report:=visitedCells\/{robot_x_Position|->robot_y_Position},pred(robot_x_Position),routes^[pred(robot_x_Position)|->robot_y_Position],movements^[WEST],CAN_MOVE [] not(pred(robot_x_Position)|->robot_y_Position: panel & pred(robot_x_Position)|->robot_y_Position/:INVALID_CELLS) ==> (pred(robot_x_Position)|->robot_y_Position: panel & pred(robot_x_Position)|->robot_y_Position: INVALID_CELLS ==> report:=CANNOT_MOVE_WALL_DETECTED [] not(pred(robot_x_Position)|->robot_y_Position: panel & pred(robot_x_Position)|->robot_y_Position: INVALID_CELLS) ==> (pred(robot_x_Position)|->robot_y_Position/:panel ==> report:=CANNOT_MOVE_OUT_OF_MAZE [] not(pred(robot_x_Position)|->robot_y_Position/:panel) ==> skip)));
  Expanded_List_Substitution(Machine(Robot),MoveSouth)==(report: REPORT | robot_x_Position|->pred(robot_y_Position): panel & robot_x_Position|->pred(robot_y_Position)/:INVALID_CELLS ==> visitedCells,robot_y_Position,routes,movements,report:=visitedCells\/{robot_x_Position|->robot_y_Position},pred(robot_y_Position),routes^[robot_x_Position|->pred(robot_y_Position)],movements^[SOUTH],CAN_MOVE [] not(robot_x_Position|->pred(robot_y_Position): panel & robot_x_Position|->pred(robot_y_Position)/:INVALID_CELLS) ==> (robot_x_Position|->pred(robot_y_Position): panel & robot_x_Position|->pred(robot_y_Position): INVALID_CELLS ==> report:=CANNOT_MOVE_WALL_DETECTED [] not(robot_x_Position|->pred(robot_y_Position): panel & robot_x_Position|->pred(robot_y_Position): INVALID_CELLS) ==> (robot_x_Position|->pred(robot_y_Position)/:panel ==> report:=CANNOT_MOVE_OUT_OF_MAZE [] not(robot_x_Position|->pred(robot_y_Position)/:panel) ==> skip)));
  Expanded_List_Substitution(Machine(Robot),MoveEast)==(report: REPORT | succ(robot_x_Position)|->robot_y_Position: panel & succ(robot_x_Position)|->robot_y_Position/:INVALID_CELLS ==> visitedCells,robot_x_Position,routes,movements,report:=visitedCells\/{robot_x_Position|->robot_y_Position},succ(robot_x_Position),routes^[succ(robot_x_Position)|->robot_y_Position],movements^[EAST],CAN_MOVE [] not(succ(robot_x_Position)|->robot_y_Position: panel & succ(robot_x_Position)|->robot_y_Position/:INVALID_CELLS) ==> (succ(robot_x_Position)|->robot_y_Position: panel & succ(robot_x_Position)|->robot_y_Position: INVALID_CELLS ==> report:=CANNOT_MOVE_WALL_DETECTED [] not(succ(robot_x_Position)|->robot_y_Position: panel & succ(robot_x_Position)|->robot_y_Position: INVALID_CELLS) ==> (succ(robot_x_Position)|->robot_y_Position/:panel ==> report:=CANNOT_MOVE_OUT_OF_MAZE [] not(succ(robot_x_Position)|->robot_y_Position/:panel) ==> skip)));
  Expanded_List_Substitution(Machine(Robot),MoveNorth)==(report: REPORT | robot_x_Position|->succ(robot_y_Position): panel & robot_x_Position|->succ(robot_y_Position)/:INVALID_CELLS ==> visitedCells,robot_y_Position,routes,movements,report:=visitedCells\/{robot_x_Position|->robot_y_Position},succ(robot_y_Position),routes^[robot_x_Position|->succ(robot_y_Position)],movements^[NORTH],CAN_MOVE [] not(robot_x_Position|->succ(robot_y_Position): panel & robot_x_Position|->succ(robot_y_Position)/:INVALID_CELLS) ==> (robot_x_Position|->succ(robot_y_Position): panel & robot_x_Position|->succ(robot_y_Position): INVALID_CELLS ==> report:=CANNOT_MOVE_WALL_DETECTED [] not(robot_x_Position|->succ(robot_y_Position): panel & robot_x_Position|->succ(robot_y_Position): INVALID_CELLS) ==> (robot_x_Position|->succ(robot_y_Position)/:panel ==> report:=CANNOT_MOVE_OUT_OF_MAZE [] not(robot_x_Position|->succ(robot_y_Position)/:panel) ==> skip)));
  List_Substitution(Machine(Robot),MoveNorth)==(IF robot_x_Position|->succ(robot_y_Position): panel & robot_x_Position|->succ(robot_y_Position)/:INVALID_CELLS THEN visitedCells:=visitedCells\/{robot_x_Position|->robot_y_Position} || robot_y_Position:=succ(robot_y_Position) || routes:=routes^[robot_x_Position|->succ(robot_y_Position)] || movements:=movements^[NORTH] || report:=CAN_MOVE ELSIF robot_x_Position|->succ(robot_y_Position): panel & robot_x_Position|->succ(robot_y_Position): INVALID_CELLS THEN report:=CANNOT_MOVE_WALL_DETECTED ELSIF robot_x_Position|->succ(robot_y_Position)/:panel THEN report:=CANNOT_MOVE_OUT_OF_MAZE END);
  List_Substitution(Machine(Robot),MoveEast)==(IF succ(robot_x_Position)|->robot_y_Position: panel & succ(robot_x_Position)|->robot_y_Position/:INVALID_CELLS THEN visitedCells:=visitedCells\/{robot_x_Position|->robot_y_Position} || robot_x_Position:=succ(robot_x_Position) || routes:=routes^[succ(robot_x_Position)|->robot_y_Position] || movements:=movements^[EAST] || report:=CAN_MOVE ELSIF succ(robot_x_Position)|->robot_y_Position: panel & succ(robot_x_Position)|->robot_y_Position: INVALID_CELLS THEN report:=CANNOT_MOVE_WALL_DETECTED ELSIF succ(robot_x_Position)|->robot_y_Position/:panel THEN report:=CANNOT_MOVE_OUT_OF_MAZE END);
  List_Substitution(Machine(Robot),MoveSouth)==(IF robot_x_Position|->pred(robot_y_Position): panel & robot_x_Position|->pred(robot_y_Position)/:INVALID_CELLS THEN visitedCells:=visitedCells\/{robot_x_Position|->robot_y_Position} || robot_y_Position:=pred(robot_y_Position) || routes:=routes^[robot_x_Position|->pred(robot_y_Position)] || movements:=movements^[SOUTH] || report:=CAN_MOVE ELSIF robot_x_Position|->pred(robot_y_Position): panel & robot_x_Position|->pred(robot_y_Position): INVALID_CELLS THEN report:=CANNOT_MOVE_WALL_DETECTED ELSIF robot_x_Position|->pred(robot_y_Position)/:panel THEN report:=CANNOT_MOVE_OUT_OF_MAZE END);
  List_Substitution(Machine(Robot),MoveWest)==(IF pred(robot_x_Position)|->robot_y_Position: panel & pred(robot_x_Position)|->robot_y_Position/:INVALID_CELLS THEN visitedCells:=visitedCells\/{robot_x_Position|->robot_y_Position} || robot_x_Position:=pred(robot_x_Position) || routes:=routes^[pred(robot_x_Position)|->robot_y_Position] || movements:=movements^[WEST] || report:=CAN_MOVE ELSIF pred(robot_x_Position)|->robot_y_Position: panel & pred(robot_x_Position)|->robot_y_Position: INVALID_CELLS THEN report:=CANNOT_MOVE_WALL_DETECTED ELSIF pred(robot_x_Position)|->robot_y_Position/:panel THEN report:=CANNOT_MOVE_OUT_OF_MAZE END);
  List_Substitution(Machine(Robot),foundExit)==(IF robot_x_Position|->robot_y_Position = 1|->5 THEN report:=YES ELSE report:=NO END);
  List_Substitution(Machine(Robot),getPosition)==(position:=robot_x_Position|->robot_y_Position);
  List_Substitution(Machine(Robot),Teleport)==(IF square_xx|->square_yy: panel & square_xx|->square_yy/:INVALID_CELLS & square_xx|->square_yy/=EXIT THEN visitedCells:=visitedCells\/{robot_x_Position|->robot_y_Position} || movements:=movements^[TELEPORT] || robot_x_Position:=square_xx || robot_y_Position:=square_yy || report:=CAN_TELEPORT ELSE IF square_xx|->square_yy = EXIT THEN report:=CANT_TELEPORT_TO_EXIT_SQUARE ELSIF square_xx|->square_yy: INVALID_CELLS THEN report:=CANNOT_MOVE_WALL_DETECTED ELSE report:=CANNOT_MOVE_OUT_OF_MAZE END END);
  List_Substitution(Machine(Robot),visitedSquare)==(IF square_xx|->square_yy: visitedCells THEN report:=YES ELSE report:=NO END);
  List_Substitution(Machine(Robot),robotsRoute)==(robots_route:=routes);
  List_Substitution(Machine(Robot),robotsMovements)==(robots_movements:=movements);
  List_Substitution(Machine(Robot),resetPosition)==(position:=1|->1 || routes:=<> || visitedCells:=<>)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Robot))==(?);
  Inherited_List_Constants(Machine(Robot))==(?);
  List_Constants(Machine(Robot))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Robot),REPORT)==({CAN_MOVE,CANNOT_MOVE_WALL_DETECTED,CANNOT_MOVE_OUT_OF_MAZE,CAN_TELEPORT,CANT_TELEPORT_TO_EXIT_SQUARE,YES,NO});
  Context_List_Enumerated(Machine(Robot))==(?);
  Context_List_Defered(Machine(Robot))==(?);
  Context_List_Sets(Machine(Robot))==(?);
  List_Valuable_Sets(Machine(Robot))==(?);
  Inherited_List_Enumerated(Machine(Robot))==(?);
  Inherited_List_Defered(Machine(Robot))==(?);
  Inherited_List_Sets(Machine(Robot))==(?);
  List_Enumerated(Machine(Robot))==(REPORT,MOVEMENT);
  List_Defered(Machine(Robot))==(?);
  List_Sets(Machine(Robot))==(REPORT,MOVEMENT);
  Set_Definition(Machine(Robot),MOVEMENT)==({NORTH,SOUTH,EAST,WEST,TELEPORT})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Robot))==(?);
  Expanded_List_HiddenConstants(Machine(Robot))==(?);
  List_HiddenConstants(Machine(Robot))==(?);
  External_List_HiddenConstants(Machine(Robot))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Robot))==(btrue);
  Context_List_Properties(Machine(Robot))==(MAZE_WIDTH <: NAT & MAZE_WIDTH = 1..7 & MAZE_HEIGHT <: NAT & MAZE_HEIGHT = 1..5 & CELL: NAT <-> NAT & CELL = MAZE_WIDTH*MAZE_HEIGHT & EXIT: CELL & EXIT = 1|->5 & INVALID_CELLS: POW(CELL) & INVALID_CELLS = {1|->3,2|->1,2|->3,2|->5,3|->3,4|->2,4|->3,4|->4,6|->1,6|->2,6|->4,7|->4});
  Inherited_List_Properties(Machine(Robot))==(btrue);
  List_Properties(Machine(Robot))==(REPORT: FIN(INTEGER) & not(REPORT = {}) & MOVEMENT: FIN(INTEGER) & not(MOVEMENT = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Robot),Machine(Maze))==(?);
  Seen_Context_List_Enumerated(Machine(Robot))==(?);
  Seen_Context_List_Invariant(Machine(Robot))==(btrue);
  Seen_Context_List_Assertions(Machine(Robot))==(btrue);
  Seen_Context_List_Properties(Machine(Robot))==(btrue);
  Seen_List_Constraints(Machine(Robot))==(btrue);
  Seen_List_Operations(Machine(Robot),Machine(Maze))==(?);
  Seen_Expanded_List_Invariant(Machine(Robot),Machine(Maze))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Robot),MoveNorth)==(?);
  List_ANY_Var(Machine(Robot),MoveEast)==(?);
  List_ANY_Var(Machine(Robot),MoveSouth)==(?);
  List_ANY_Var(Machine(Robot),MoveWest)==(?);
  List_ANY_Var(Machine(Robot),foundExit)==(?);
  List_ANY_Var(Machine(Robot),getPosition)==(?);
  List_ANY_Var(Machine(Robot),Teleport)==(?);
  List_ANY_Var(Machine(Robot),visitedSquare)==(?);
  List_ANY_Var(Machine(Robot),robotsRoute)==(?);
  List_ANY_Var(Machine(Robot),robotsMovements)==(?);
  List_ANY_Var(Machine(Robot),resetPosition)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Robot)) == (REPORT,MOVEMENT,CAN_MOVE,CANNOT_MOVE_WALL_DETECTED,CANNOT_MOVE_OUT_OF_MAZE,CAN_TELEPORT,CANT_TELEPORT_TO_EXIT_SQUARE,YES,NO,NORTH,SOUTH,EAST,WEST,TELEPORT | ? | movements,routes,robot_y_Position,robot_x_Position,visitedCells,panel | ? | MoveNorth,MoveEast,MoveSouth,MoveWest,foundExit,getPosition,Teleport,visitedSquare,robotsRoute,robotsMovements,resetPosition | ? | seen(Machine(Maze)) | ? | Robot);
  List_Of_HiddenCst_Ids(Machine(Robot)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Robot)) == (?);
  List_Of_VisibleVar_Ids(Machine(Robot)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Robot)) == (?: ?);
  List_Of_Ids(Machine(Maze)) == (MAZE_WIDTH,MAZE_HEIGHT,CELL,INVALID_CELLS,EXIT | ? | ? | ? | ? | ? | ? | ? | Maze);
  List_Of_HiddenCst_Ids(Machine(Maze)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Maze)) == (MAZE_WIDTH,MAZE_HEIGHT,CELL,INVALID_CELLS,EXIT);
  List_Of_VisibleVar_Ids(Machine(Maze)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Maze)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Robot)) == (Type(REPORT) == Cst(SetOf(etype(REPORT,0,6)));Type(MOVEMENT) == Cst(SetOf(etype(MOVEMENT,0,4))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Robot)) == (Type(CAN_MOVE) == Cst(etype(REPORT,0,6));Type(CANNOT_MOVE_WALL_DETECTED) == Cst(etype(REPORT,0,6));Type(CANNOT_MOVE_OUT_OF_MAZE) == Cst(etype(REPORT,0,6));Type(CAN_TELEPORT) == Cst(etype(REPORT,0,6));Type(CANT_TELEPORT_TO_EXIT_SQUARE) == Cst(etype(REPORT,0,6));Type(YES) == Cst(etype(REPORT,0,6));Type(NO) == Cst(etype(REPORT,0,6));Type(NORTH) == Cst(etype(MOVEMENT,0,4));Type(SOUTH) == Cst(etype(MOVEMENT,0,4));Type(EAST) == Cst(etype(MOVEMENT,0,4));Type(WEST) == Cst(etype(MOVEMENT,0,4));Type(TELEPORT) == Cst(etype(MOVEMENT,0,4)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Robot)) == (Type(movements) == Mvl(SetOf(btype(INTEGER,?,?)*etype(MOVEMENT,?,?)));Type(routes) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(robot_y_Position) == Mvl(btype(INTEGER,?,?));Type(robot_x_Position) == Mvl(btype(INTEGER,?,?));Type(visitedCells) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(panel) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Robot)) == (Type(resetPosition) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(robotsMovements) == Cst(SetOf(btype(INTEGER,?,?)*etype(MOVEMENT,?,?)),No_type);Type(robotsRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(visitedSquare) == Cst(etype(REPORT,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(Teleport) == Cst(etype(REPORT,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(getPosition) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(foundExit) == Cst(etype(REPORT,?,?),No_type);Type(MoveWest) == Cst(etype(REPORT,?,?),No_type);Type(MoveSouth) == Cst(etype(REPORT,?,?),No_type);Type(MoveEast) == Cst(etype(REPORT,?,?),No_type);Type(MoveNorth) == Cst(etype(REPORT,?,?),No_type));
  Observers(Machine(Robot)) == (Type(robotsMovements) == Cst(SetOf(btype(INTEGER,?,?)*etype(MOVEMENT,?,?)),No_type);Type(robotsRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(visitedSquare) == Cst(etype(REPORT,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(getPosition) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(foundExit) == Cst(etype(REPORT,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
