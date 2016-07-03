/// scrUpdateDepth()

if(object_index == objLumberjack || object_index == objVillain)
    if(room == roomMain) {
        if(objGameControl.gameState == ACCUSEMODE)
            depth = -y + LUMBERJACKBASEDEPTH;
        else
            depth = -y + GAMEFIELDBASEDEPTH;
    } else {
        depth = -y + GAMEFIELDBASEDEPTH;
    }
else
    depth = -y + GAMEFIELDBASEDEPTH;
