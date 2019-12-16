
--arrows
mobs:register_arrow("horror:fireball", {
   visual = "sprite",
   visual_size = {x = 0.5, y = 0.5},
   textures = {"horror_fireball.png"},
   velocity = 8,
   tail = 1, -- enable tail
   tail_texture = "horror_steam.png",

   hit_player = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 3},
      }, nil)
   end,

   hit_mob = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 3},
      }, nil)
   end,

   hit_node = function(self)
      self.object:remove()
   end,
})

mobs:register_arrow("horror:fireball_2", {
   visual = "sprite",
   visual_size = {x = 1, y = 1},
   textures = {"horror_fireshot.png"},
   velocity = 8,
   tail = 0, -- enable tail
   tail_texture = "horror_steam.png",

   hit_player = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 2},
      }, nil)
   end,

   hit_mob = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 2},
      }, nil)
   end,

   hit_node = function(self)
      self.object:remove()
   end,
})

local destructive = false

if destructive == true then
mobs:register_arrow("horror:fireball_3", {
   visual = "sprite",
   visual_size = {x = 1, y = 1},
   textures = {"horror_fireshot.png"},
   velocity = 5,
   tail = 1, -- enable tail
   tail_texture = "horror_flame2.png",

   hit_player = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 2},
      }, nil)
   end,

   hit_mob = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 2},
      }, nil)
   end,

   hit_node = function(_, pos)
      mobs:explosion(pos, 1, 1, 1)
   end,
})

mobs:register_arrow("horror:rocket", {
   visual = "sprite",
   visual_size = {x = 0.5, y = 0.5},
   textures = {"horror_rocket.png"},
   velocity = 8,
   tail = 1, -- enable tail
   tail_texture = "horror_rocket_smoke.png",

   hit_player = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 3},
      }, nil)
   end,

   hit_mob = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 3},
      }, nil)
   end,

   hit_node = function(_, pos)
      mobs:explosion(pos, 2, 1, 1)
   end,
})
else

mobs:register_arrow("horror:fireball_3", {
   visual = "sprite",
   visual_size = {x = 1, y = 1},
   textures = {"horror_fireshot.png"},
   velocity = 3,
   tail = 1, -- enable tail
   tail_texture = "horror_flame2.png",

   hit_player = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 2},
      }, nil)
   end,

   hit_mob = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 2},
      }, nil)
   end,

   hit_node = function(self)
      self.object:remove()
   end,
})

mobs:register_arrow("horror:rocket", {
   visual = "sprite",
   visual_size = {x = 0.5, y = 0.5},
   textures = {"horror_rocket.png"},
   velocity = 8,
   tail = 1, -- enable tail
   tail_texture = "horror_rocket_smoke.png",

   hit_player = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 3},
      }, nil)
   end,

   hit_mob = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 3},
      }, nil)
   end,

   hit_node = function(self)
      self.object:remove()
   end,
})
end

mobs:register_arrow("horror:fireball_4", {
   visual = "sprite",
   visual_size = {x = 1, y = 1},
   textures = {"horror_plasma.png"},
   velocity = 6,
   tail = 0, -- enable tail
   tail_texture = "horror_steam.png",

   hit_player = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 3},
      }, nil)
   end,

   hit_mob = function(self, player)
      player:punch(self.object, 1.0, {
         full_punch_interval = 1.0,
         damage_groups = {fleshy = 3},
      }, nil)
   end,

   hit_node = function(self)
      self.object:remove()
   end,
})
