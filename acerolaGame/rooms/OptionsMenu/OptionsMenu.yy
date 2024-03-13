{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "OptionsMenu",
  "creationCodeFile": "rooms/OptionsMenu/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_782E144F_1","path":"rooms/OptionsMenu/OptionsMenu.yy",},
    {"name":"inst_3E23CCF","path":"rooms/OptionsMenu/OptionsMenu.yy",},
    {"name":"inst_4AA33263","path":"rooms/OptionsMenu/OptionsMenu.yy",},
    {"name":"inst_35A5A5DC","path":"rooms/OptionsMenu/OptionsMenu.yy",},
    {"name":"inst_5DA68AE7","path":"rooms/OptionsMenu/OptionsMenu.yy",},
    {"name":"inst_148842F6","path":"rooms/OptionsMenu/OptionsMenu.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"gameManager","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_6","depth":100,"effectEnabled":true,"effectType":"_effect_windblown_particles","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"param_sprite","type":2,"value":"spr_bullet",},
        {"name":"param_num_particles","type":0,"value":"10",},
        {"name":"param_particle_spawn_time","type":0,"value":"100",},
        {"name":"param_particle_spawn_all_at_start","type":0,"value":"1",},
        {"name":"param_warmup_frames","type":0,"value":"0",},
        {"name":"param_particle_mass_min","type":0,"value":"0.005",},
        {"name":"param_particle_mass_max","type":0,"value":"0.01",},
        {"name":"param_particle_start_sprite_scale","type":0,"value":"1",},
        {"name":"param_particle_end_sprite_scale","type":0,"value":"1",},
        {"name":"param_particle_col_1","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_alt_1","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_2","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_alt_2","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_2_pos","type":0,"value":"0.33",},
        {"name":"param_particle_col_enabled_2","type":0,"value":"0",},
        {"name":"param_particle_col_3","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_alt_3","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_3_pos","type":0,"value":"0.66",},
        {"name":"param_particle_col_enabled_3","type":0,"value":"0",},
        {"name":"param_particle_col_4","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_alt_4","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_initial_velocity_range_x_min","type":0,"value":"-100",},
        {"name":"param_particle_initial_velocity_range_x_max","type":0,"value":"100",},
        {"name":"param_particle_initial_velocity_range_y_min","type":0,"value":"-100",},
        {"name":"param_particle_initial_velocity_range_y_max","type":0,"value":"100",},
        {"name":"param_particle_initial_rotation_min","type":0,"value":"0",},
        {"name":"param_particle_initial_rotation_max","type":0,"value":"360",},
        {"name":"param_particle_rot_speed_min","type":0,"value":"-360",},
        {"name":"param_particle_rot_speed_max","type":0,"value":"360",},
        {"name":"param_particle_align_vel","type":0,"value":"1",},
        {"name":"param_particle_lifetime_min","type":0,"value":"100",},
        {"name":"param_particle_lifetime_max","type":0,"value":"100",},
        {"name":"param_particle_update_skip","type":0,"value":"1",},
        {"name":"param_particle_spawn_border_prop","type":0,"value":"0.25",},
        {"name":"param_particle_src_blend","type":0,"value":"5",},
        {"name":"param_particle_dest_blend","type":0,"value":"6",},
        {"name":"param_trails_only","type":0,"value":"1",},
        {"name":"param_trail_chance","type":0,"value":"40",},
        {"name":"param_trail_lifetime_min","type":0,"value":"0.5",},
        {"name":"param_trail_lifetime_max","type":0,"value":"1",},
        {"name":"param_trail_thickness_min","type":0,"value":"0.15",},
        {"name":"param_trail_thickness_max","type":0,"value":"0.15",},
        {"name":"param_trail_col_1","type":1,"value":"#19FF59FF",},
        {"name":"param_trail_col_alt_1","type":1,"value":"#3FFFFFFF",},
        {"name":"param_trail_col_2","type":1,"value":"#19FFFFFF",},
        {"name":"param_trail_col_alt_2","type":1,"value":"#3FFFFFFF",},
        {"name":"param_trail_col_2_pos","type":0,"value":"0.5",},
        {"name":"param_trail_col_enabled_2","type":0,"value":"1",},
        {"name":"param_trail_col_3","type":1,"value":"#19FFFFFF",},
        {"name":"param_trail_col_alt_3","type":1,"value":"#3FFFFFFF",},
        {"name":"param_trail_col_3_pos","type":0,"value":"0.66",},
        {"name":"param_trail_col_enabled_3","type":0,"value":"0",},
        {"name":"param_trail_col_4","type":1,"value":"#00FFFFFF",},
        {"name":"param_trail_col_alt_4","type":1,"value":"#00FFFFFF",},
        {"name":"param_trail_min_segment_length","type":0,"value":"20",},
        {"name":"param_trail_src_blend","type":0,"value":"5",},
        {"name":"param_trail_dest_blend","type":0,"value":"6",},
        {"name":"param_num_blowers","type":0,"value":"3",},
        {"name":"param_blower_size_min","type":0,"value":"0.2",},
        {"name":"param_blower_size_max","type":0,"value":"0.6",},
        {"name":"param_blower_speed_min","type":0,"value":"0.2",},
        {"name":"param_blower_speed_max","type":0,"value":"0.5",},
        {"name":"param_blower_rot_speed_min","type":0,"value":"-180",},
        {"name":"param_blower_rot_speed_max","type":0,"value":"180",},
        {"name":"param_blower_force_min","type":0,"value":"5",},
        {"name":"param_blower_force_max","type":0,"value":"15",},
        {"name":"param_blower_camvec_scale","type":0,"value":"-1",},
        {"name":"param_force_grid_sizex","type":0,"value":"8",},
        {"name":"param_force_grid_sizey","type":0,"value":"8",},
        {"name":"param_wind_vector_x","type":0,"value":"-4",},
        {"name":"param_wind_vector_y","type":0,"value":"-1",},
        {"name":"param_dragcoeff","type":0,"value":"1",},
        {"name":"param_grav_accel","type":0,"value":"300",},
        {"name":"param_debug_grid","type":0,"value":"0",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances_1","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_782E144F_1","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_button","path":"objects/obj_button/obj_button.yy",},"properties":[],"rotation":0.0,"scaleX":1.060606,"scaleY":1.0,"x":49.0,"y":213.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3E23CCF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slider","path":"objects/obj_slider/obj_slider.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slider","path":"objects/obj_slider/obj_slider.yy",},"propertyId":{"name":"audioGroup","path":"objects/obj_slider/obj_slider.yy",},"value":"audiogroup_default",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slider","path":"objects/obj_slider/obj_slider.yy",},"propertyId":{"name":"label","path":"objects/obj_slider/obj_slider.yy",},"value":"Sound Effects",},
          ],"rotation":-0.15576635,"scaleX":2.0,"scaleY":2.0,"x":240.07327,"y":109.54216,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4AA33263","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slider","path":"objects/obj_slider/obj_slider.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slider","path":"objects/obj_slider/obj_slider.yy",},"propertyId":{"name":"audioGroup","path":"objects/obj_slider/obj_slider.yy",},"value":"music",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slider","path":"objects/obj_slider/obj_slider.yy",},"propertyId":{"name":"label","path":"objects/obj_slider/obj_slider.yy",},"value":"Music",},
          ],"rotation":-0.15576635,"scaleX":2.0,"scaleY":2.0,"x":240.98969,"y":158.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_35A5A5DC","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_button","path":"objects/obj_button/obj_button.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":431.0,"y":222.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5DA68AE7","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_credits","path":"objects/obj_credits/obj_credits.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":408.0,"y":119.34793,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_148842F6","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_button","path":"objects/obj_button/obj_button.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":84.0,"y":110.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_5","depth":300,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.01",},
        {"name":"g_Distort2Speed","type":0,"value":"0.025",},
        {"name":"g_Distort1Scale","type":0,"value":"13.3",},
        {"name":"g_Distort1Scale","type":0,"value":"1.3",},
        {"name":"g_Distort2Scale","type":0,"value":"33.3",},
        {"name":"g_Distort2Scale","type":0,"value":"3.3",},
        {"name":"g_Distort1Amount","type":0,"value":"2",},
        {"name":"g_Distort2Amount","type":0,"value":"4",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"0.5",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_heathaze_noise_sprite",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets_1","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_4219AA0D_1","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":0.25,"scaleY":0.25,"spriteId":{"name":"spr_options","path":"sprites/spr_options/spr_options.yy",},"x":73.25134,"y":0.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_2EADE8FA","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":9.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":7.4999995,"scaleY":7.5,"spriteId":{"name":"spr_adOverlay","path":"sprites/spr_adOverlay/spr_adOverlay.yy",},"x":0.3744507,"y":0.0,},
      ],"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_4","depth":500,"effectEnabled":true,"effectType":"_filter_pixelate","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_CellSize","type":0,"value":"10",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_3","depth":600,"effectEnabled":true,"effectType":"_filter_large_blur","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Radius","type":0,"value":"10",},
        {"name":"g_NoiseTexture","type":2,"value":"_filter_large_blur_noise",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_4_1","depth":700,"effectEnabled":true,"effectType":"_filter_posterise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_ColourLevels","type":0,"value":"14",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_1","depth":800,"effectEnabled":true,"effectType":"_filter_gradient","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_GradientColour1","type":1,"value":"#FFCCCCCC",},
        {"name":"g_GradientColour2","type":1,"value":"#FF000000",},
        {"name":"g_GradientPosition1","type":0,"value":"0",},
        {"name":"g_GradientPosition1","type":0,"value":"0",},
        {"name":"g_GradientPosition2","type":0,"value":"1",},
        {"name":"g_GradientPosition2","type":0,"value":"1",},
        {"name":"g_GradientMode","type":0,"value":"4",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4283190348,"depth":900,"effectEnabled":true,"effectType":"none","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 270,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 480,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":1080,"hspeed":-1,"hview":270,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1920,"wview":480,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":256,"hspeed":-1,"hview":512,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":512,"wview":1024,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}