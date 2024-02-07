Rails.application.routes.draw do
  get("/",{controller:"home", action:"home"})
  get("/dice/2/6",{controller:"home",action:"two_d6"})
end
