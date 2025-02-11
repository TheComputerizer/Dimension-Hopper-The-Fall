import net.minecraft.client.multiplayer.WorldClient
import net.minecraft.client.renderer.OpenGlHelper
import net.minecraft.client.resources.IResourceManager
import net.minecraft.client.shader.Framebuffer
import net.minecraftforge.client.resource.IResourceType
import net.minecraftforge.client.resource.ISelectiveResourceReloadListener
import org.apache.commons.io.IOUtils
import org.lwjgl.opengl.ARBShaderObjects
import org.lwjgl.opengl.GL11
import org.lwjgl.opengl.GL20

import render.uniforms.Uniform

import java.io.IOException
import java.io.StringWriter
import java.nio.ByteBuffer
import java.nio.FloatBuffer
import java.nio.IntBuffer
import java.util.Collection
import java.util.Objects
import java.util.function.Predicate

class ShaderManager implements ISelectiveResourceReloadListener {

    static ShaderManager INSTANCE

    static String getShaderError(int programID, String baseMsg) {
        int length = GL20.glGetProgrami(programID,ARBShaderObjects.GL_OBJECT_INFO_LOG_LENGTH_ARB)
        return baseMsg+" `"+GL20.glGetProgramInfoLog(programID,length)+"`"
    }

    static ShaderManager getInstance() {
        if(Objects.isNull(INSTANCE)) new ShaderManager()
        return INSTANCE
    }

    static int initShaderProgram(String fragmentRes, String vertexRes) {
        int programID = ARBShaderObjects.glCreateProgramObjectARB()
        int vertexID = Objects.nonNull(vertexRes) ? INSTANCE.createShader(vertexRes,ARBShaderObjects.GL_VERTEX_SHADER_ARB) : 0
        int fragmentID = Objects.nonNull(fragmentRes) ? INSTANCE.createShader(fragmentRes,ARBShaderObjects.GL_FRAGMENT_SHADER_ARB) : 0
        programID = linkShaders(programID,vertexID,fragmentID)
        OpenGlHelper.glUseProgram(0)
        return programID
    }

    static int linkShaders(int programID, int ... shaderIDs) {
        if(programID!=0) {
            for(int shaderID : shaderIDs)
                if(shaderID!=0) OpenGlHelper.glAttachShader(programID,shaderID)
            OpenGlHelper.glLinkProgram(programID)
            programID = validateLinkedShader(programID,"Shader link validation failed!")
            for(int shaderID : shaderIDs)
                if(shaderID!=0) OpenGlHelper.glDeleteShader(shaderID)
        }
        return programID
    }

    static int validateLinkedShader(int programID, String errorMsg) {
        if(!validateShader(programID,ARBShaderObjects.GL_OBJECT_LINK_STATUS_ARB,"Failed to link shader!")) {
            print("Shader link validation failed! "+errorMsg)
            return 0
        }
        GL20.glValidateProgram(programID);
        if(!validateShader(programID,ARBShaderObjects.GL_OBJECT_VALIDATE_STATUS_ARB,"Failed to validate shader!")) {
            print("Shader link validation failed! "+errorMsg)
            return 0
        }
        return programID
    }

    static boolean validateShader(int programID, int parameter, String errorMsg) {
        if(OpenGlHelper.glGetProgrami(programID,parameter)==GL11.GL_FALSE) {
            print(getShaderError(programID,errorMsg))
            OpenGlHelper.glDeleteShader(programID)
            return false
        }
        return true
    }

    final SkyShader skyShader

    ShaderManager() {
        this.skyShader = new SkyShader()
        INSTANCE = this
    }

    void allocateUniforms(int programID, Collection<Uniform<?>> uniforms) {
        for(Uniform<?> uniform : uniforms)
            uniform.setID(OpenGlHelper.glGetUniformLocation(programID,uniform.getName()))
    }

    int createShader(String shaderLocation, int shaderType) {
        int shaderID = 0
        try {
            shaderID = OpenGlHelper.glCreateShader(shaderType)
            if(shaderID==0) throw new IllegalArgumentException("Unknown shader type "+shaderType)
            ByteBuffer shaderBuffer = toBuffer(load(shaderLocation))
            shaderBuffer.put(shaderBytes)
            shaderBuffer.position(0)
            OpenGlHelper.glShaderSource(shaderID,shaderBuffer)
            OpenGlHelper.glCompileShader(shaderID)
            return shaderID
        } catch(Exception ex) {
            print("Failed to create shader from resource "+shaderLocation)
            print(ex)
            if(shaderID!=0) OpenGlHelper.glDeleteShader(shaderID)
        }
        return 0
    }

    String getResourceAsString(IResourceManager manager, ResourceLocation resource) throws IOException {
        StringWriter writer = new StringWriter()
        IOUtils.copy(manager.getResource(resource).getInputStream(),writer,"UTF-8")
        return writer.toString()
    }

    void initShaderFrame(WorldClient world) {
        if(this.skyShader.canRender(world)) this.skyShader.init()
    }

    String load(String name) {
    try {
        return file("groovy/assets/dimensionhopper/shaders/$name").getText()
    } catch (Exception ex) {
        throw new RuntimeException("Failed to load shader: $name",ex)
    }
}

    String logShaderError(int program, String baseMsg) {
        int length = GL20.glGetProgrami(program,ARBShaderObjects.GL_OBJECT_INFO_LOG_LENGTH_ARB)
        return baseMsg+" `"+GL20.glGetProgramInfoLog(program,length)+"1"
    }

    @Override
    void onResourceManagerReload(IResourceManager manager) {
        this.skyShader.delete()
    }

    @Override
    void onResourceManagerReload(IResourceManager manager, Predicate<IResourceType> resourcePredicate) {
        this.skyShader.delete()
    }

    ByteBuffer toBuffer(String text) {
        byte[] bytes = text.getBytes(UTF_8)
        ByteBuffer buffer = ByteBuffer.allocateDirect(bytes.length)
        buffer.put(bytes)
        buffer.flip()
        return buffer
    }

    void uploadFloat(int programID, String name, float val) {
        int uniformID = ARBShaderObjects.glGetUniformLocationARB(programID,name)
        ARBShaderObjects.glUniform1fARB(uniformID,val)
    }

    void uploadFloats(int programID, String name, float ... vals) {
        int uniformID = ARBShaderObjects.glGetUniformLocationARB(programID,name)
        switch(vals.length) {
            case 1: ARBShaderObjects.glUniform1fARB(uniformID,vals[0])
            case 2: ARBShaderObjects.glUniform2fARB(uniformID,vals[0],vals[1])
            case 3: ARBShaderObjects.glUniform3fARB(uniformID,vals[0],vals[1],vals[2])
        }
    }

    void uploadFloatBuffer(FloatBuffer buffer, FloatBuffer otherBuffer) {
        buffer.position(0)
        otherBuffer.position(0)
        buffer.put(otherBuffer)
    }

    void uploadInts(IntBuffer buffer, int ... vals) {
        buffer.position(0)
        buffer.put(vals)
    }

    void uploadUniforms(float partialTicks, int programID, Collection<Uniform<?>> uniforms) {
        for(Uniform<?> uniform : uniforms) uniform.upload(partialTicks,programID)
    }
}