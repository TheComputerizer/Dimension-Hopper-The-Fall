import net.minecraft.client.multiplayer.WorldClient
import net.minecraft.client.renderer.GlStateManager
import net.minecraft.client.renderer.OpenGlHelper
import org.lwjgl.opengl.GL11

import render.uniforms.Uniform

import java.util.List

import static org.lwjgl.opengl.GL11.GL_LIGHTING

abstract class Shader {

    final List<Uniform<?>> uniforms
    final String fragmentLocation
    final String vertexLocation
    int programID
    boolean previousLighting

    Shader(String fragmentLocation, String vertexLocation) {
        this.uniforms = new ArrayList<>()
        this.fragmentLocation = fragmentLocation
        this.vertexLocation = vertexLocation
    }

    void addUniform(Uniform<?> uniform) {
        this.uniforms.add(uniform)
    }

    boolean canRender(WorldClient world) {
        return true
    }

    void delete() {
        if(this.programID!=0) OpenGlHelper.glDeleteProgram(this.programID)
    }

    int getProgramID() {
        if(this.programID==0)
            this.programID = ShaderManager.initShaderProgram(this.fragmentLocation,this.vertexLocation)
        return this.programID
    }

    void init() {
        if(this.programID!=0) return
        ShaderManager.getInstance().allocateUniforms(getProgramID(),this.uniforms)
    }

    void release() {
        if(this.previousLighting) GlStateManager.enableLighting()
        OpenGlHelper.glUseProgram(0)
    }

    void upload(float partialTicks) {
        ShaderManager.getInstance().uploadUniforms(partialTicks,this.programID,this.uniforms)
    }

    void use(float partialTicks) {
        if(OpenGlHelper.areShadersSupported()) {
            this.previousLighting = GL11.glGetBoolean(GL11.GL_LIGHTING)
            GlStateManager.disableLighting()
            OpenGlHelper.glUseProgram(this.programID)
            if(this.programID>0) upload(partialTicks)
        }
    }
}