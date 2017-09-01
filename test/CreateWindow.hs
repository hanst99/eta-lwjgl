module CreateWindow(main)
where

import Graphics.Rendering.LWJGL.GLFW.Wrapper
import Control.Monad(when)
import Java

initialize :: IO ()
initialize = do
  glfwWindowHint glfwContextVersionMajor 4
  glfwWindowHint glfwContextVersionMinor 5

game :: IO ()
game = do
  initialize
  window <- glfwCreateWindow 800 600 "Hello World!" 0 0
  glfwMakeContextCurrent window
  mainLoop window

mainLoop :: Int64 -> IO ()
mainLoop window = go where
  go = do
    shouldClose <- glfwWindowShouldClose window
    when (not shouldClose) $ do
      glfwSwapBuffers window
      glfwPollEvents
      go

main :: IO ()
main = do
  initSuccess <- glfwInit
  if initSuccess
  then game >> glfwTerminate
  else
    putStrLn "Failed to initialize glfw"
