import net.minecraft.client.Minecraft
import net.minecraft.client.renderer.OpenGlHelper
import net.minecraft.client.shader.Framebuffer
import net.minecraftforge.client.event.RenderGameOverlayEvent.Pre
import org.lwjgl.opengl.ARBShaderObjects
import org.lwjgl.opengl.GL11

import java.nio.ByteBuffer

import static java.nio.charset.StandardCharsets.UTF_8
import static net.minecraft.client.renderer.OpenGlHelper.GL_FRAGMENT_SHADER as FRAGMENT_SHADER
import static net.minecraft.client.renderer.OpenGlHelper.GL_VERTEX_SHADER as VERTEX_SHADER
import static net.minecraftforge.client.event.RenderGameOverlayEvent.ElementType.ALL
import static org.lwjgl.opengl.GL11.GL_MODELVIEW as MODELVIEW
import static org.lwjgl.opengl.GL11.GL_PROJECTION as PROJECTION

enum ShaderData {
    static boolean shaderInitialized = false
    static int shaderProgram
    static int aberrationAmountLocation
    static float aberrationAmount = 0.005f
}

event_manager.listen { Pre event ->
    if(ShaderData.aberrationAmount == 0f) return
    if(event.getType()==ALL && OpenGlHelper.shadersSupported) {
        if(!ShaderData.shaderInitialized) initShader()
        applyShader()
    }
}

void applyShader() {
    Minecraft mc = Minecraft.getMinecraft()
    Framebuffer framebuffer = mc.getFramebuffer()
    framebuffer.bindFramebuffer(true)
    setupMatrix(mc.displayWidth, mc.displayHeight)
    OpenGlHelper.glUseProgram(ShaderData.shaderProgram)
    if(ShaderData.aberrationAmountLocation!=-1) 
        ARBShaderObjects.glUniform1fARB(ShaderData.aberrationAmountLocation, ShaderData.aberrationAmount)
    framebuffer.framebufferRender(mc.displayWidth,mc.displayHeight)
    OpenGlHelper.glUseProgram(0)
    resetMatrix()
}

int compileShader(int type, String text) {
    int shader = OpenGlHelper.glCreateShader(type)
    OpenGlHelper.glShaderSource(shader,toBuffer(text))
    OpenGlHelper.glCompileShader(shader)
    return shader
}


void initShader() {
    String vertexText = load('test', 'vsh')
    String fragmentText = load('test', 'fsh')
    ShaderData.shaderProgram = OpenGlHelper.glCreateProgram()
    int vertexShader = compileShader(VERTEX_SHADER,vertexText)
    int fragmentShader = compileShader(FRAGMENT_SHADER,fragmentText)
    OpenGlHelper.glAttachShader(ShaderData.shaderProgram, vertexShader)
    OpenGlHelper.glAttachShader(ShaderData.shaderProgram, fragmentShader)
    OpenGlHelper.glLinkProgram(ShaderData.shaderProgram)
    ShaderData.aberrationAmountLocation = ARBShaderObjects.glGetUniformLocationARB(ShaderData.shaderProgram,"aberrationAmount")
    ShaderData.shaderInitialized = true
}

String load(String name, String type) {
    try {
        return file("groovy/assets/dimensionhopper/shaders/$name.$type").getText()
    } catch (Exception ex) {
        throw new RuntimeException("Failed to load shader: $name.$type",ex)
    }
}

void resetMatrix() {
    GL11.glPopMatrix() // MODELVIEW
    GL11.glMatrixMode(PROJECTION)
    GL11.glPopMatrix() // PROJECTION
    GL11.glMatrixMode(MODELVIEW)
    GL11.glPopMatrix()
}

void setupMatrix(int width, int height) {
    GL11.glPushMatrix()
    GL11.glMatrixMode(PROJECTION)
    GL11.glPushMatrix()
    GL11.glLoadIdentity()
    GL11.glOrtho(0d,width,height,0d,1000d,3000d)
    GL11.glMatrixMode(MODELVIEW)
    GL11.glPushMatrix()
    GL11.glLoadIdentity()
}

ByteBuffer toBuffer(String text) {
    byte[] bytes = text.getBytes(UTF_8);
    ByteBuffer buffer = ByteBuffer.allocateDirect(bytes.length);
    buffer.put(bytes);
    buffer.flip();
    return buffer;
}