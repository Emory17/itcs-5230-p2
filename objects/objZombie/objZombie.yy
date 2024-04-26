{
  "$GMObject":"",
  "%Name":"objZombie",
  "eventList":[
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"objBox","path":"objects/objBox/objBox.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"objOuterWall","path":"objects/objOuterWall/objOuterWall.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"objInnerWall","path":"objects/objInnerWall/objInnerWall.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"objZombie",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"objBat","path":"objects/objBat/objBat.yy",},"propertyId":{"name":"totalHealth","path":"objects/objBat/objBat.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"40 * global.enemyHealthMultiplier ",},
    {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"objBat","path":"objects/objBat/objBat.yy",},"propertyId":{"name":"maxHealth","path":"objects/objBat/objBat.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"40 * global.enemyHealthMultiplier ",},
    {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"objBat","path":"objects/objBat/objBat.yy",},"propertyId":{"name":"points","path":"objects/objBat/objBat.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"20",},
  ],
  "parent":{
    "name":"enemies",
    "path":"folders/Objects/enemies.yy",
  },
  "parentObjectId":{
    "name":"objBat",
    "path":"objects/objBat/objBat.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"","%Name":"enemyVision","filters":[],"listItems":[],"multiselect":false,"name":"enemyVision","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"250","varType":0,},
    {"$GMObjectProperty":"","%Name":"pathName","filters":[],"listItems":[],"multiselect":false,"name":"pathName","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"pathBasic","varType":5,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"sprZombie",
    "path":"sprites/sprZombie/sprZombie.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}