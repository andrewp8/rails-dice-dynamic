Rails.application.routes.draw do
  get("/",{controller:"home", action:"home"})
  get("/dice/2/6", {controller:"home",action:"two_6"})
  get("/dice/2/10", {controller:"home",action:"two_10"})
  get("/dice/1/20", {controller:"home", action:"one_20"})
end
