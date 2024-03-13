function gripperGoal(position, gripAct, gripGoal, gripperCommand, effort)
    gripperCommand.Command.Position = position; %0 is fully closed, 4 is fully open
    gripperCommand.Command.MaxEffort = effort; %N
    gripperCommand.Command.Position = gripperCommand.Command.Position;
    gripGoal.Command = gripperCommand.Command;
    waitForServer(gripAct); % Can use this function if concerned with missed
    % goals but generally it should work correctly.
    sendGoal(gripAct,gripGoal)
    pause(5)
end