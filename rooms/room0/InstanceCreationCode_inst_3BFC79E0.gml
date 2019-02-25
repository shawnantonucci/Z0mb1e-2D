//[wave,type,spawnpoint,delay]

waves = ds_list_create();
ds_list_add(waves,[0,obj_zombie,0,0]);
ds_list_add(waves,[0,obj_zombie,0,50]);
ds_list_add(waves,[0,obj_zombie,0,100]);
ds_list_add(waves,[0,obj_zombie,1,0]);
ds_list_add(waves,[0,obj_zombie,1,50]);
ds_list_add(waves,[0,obj_zombie,1,100]);

ds_list_add(waves,[1,obj_zombie,0,10]);
ds_list_add(waves,[1,obj_zombie,0,20]);
ds_list_add(waves,[1,obj_zombie,0,30]);
ds_list_add(waves,[1,obj_zombie,0,40]);
ds_list_add(waves,[1,obj_zombie,0,50]);
ds_list_add(waves,[1,obj_zombie,0,60]);

ds_list_add(waves,[2,obj_zombie,1,10]);
ds_list_add(waves,[2,obj_zombie,1,20]);
ds_list_add(waves,[2,obj_zombie,1,30]);
ds_list_add(waves,[2,obj_zombie,1,40]);
ds_list_add(waves,[2,obj_zombie,1,50]);
ds_list_add(waves,[2,obj_zombie,1,60]);

ds_list_add(waves,[3,obj_zombie,1,0]);

spawn[0,0] = 427;
spawn[0,1] = 109;
spawn[1,0] = 475;
spawn[1,1] = 376;
