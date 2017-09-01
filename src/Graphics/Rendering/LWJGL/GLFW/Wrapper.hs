module Graphics.Rendering.LWJGL.GLFW.Wrapper
where

import Java

foreign import java unsafe "@static org.lwjgl.glfw.GLFW.glfwInit"
  glfwInit :: IO Bool
foreign import java unsafe "@static org.lwjgl.glfw.GLFW.glfwTerminate"
  glfwTerminate :: IO ()
foreign import java unsafe "@static org.lwjgl.glfw.GLFW.glfwWindowHint"
  glfwWindowHint :: Int -> Int -> IO ()
foreign import java unsafe "@static org.lwjgl.glfw.GLFW.glfwCreateWindow"
  glfwCreateWindow :: Int -> Int -> String -> Int64 -> Int64 -> IO Int64
foreign import java unsafe "@static org.lwjgl.glfw.GLFW.glfwDestroyWindow"
  glfwDestroyWindow :: Int64 -> IO ()
foreign import java unsafe "@static org.lwjgl.glfw.GLFW.glfwFreeCallbacks"
  glfwFreeCallbacks :: Int64 -> IO ()
foreign import java unsafe "@static org.lwjgl.glfw.GLFW.glfwWindowShouldClose"
  glfwWindowShouldClose :: Int64 -> IO Bool
foreign import java unsafe "@static org.lwjgl.glfw.GLFW.glfwMakeContextCurrent"
  glfwMakeContextCurrent :: Int64 -> IO ()
foreign import java unsafe "@static org.lwjgl.glfw.GLFW.glfwSwapBuffers"
  glfwSwapBuffers :: Int64 -> IO ()
foreign import java unsafe "@static org.lwjgl.glfw.GLFW.glfwPollEvents"
  glfwPollEvents :: IO ()

foreign import java unsafe "@static org.lwjgl.glfw.GLFW.GLFW_CONTEXT_VERSION_MAJOR"
  glfwContextVersionMajor :: Int
foreign import java unsafe "@static org.lwjgl.glfw.GLFW.GLFW_CONTEXT_VERSION_MINOR"
  glfwContextVersionMinor :: Int
