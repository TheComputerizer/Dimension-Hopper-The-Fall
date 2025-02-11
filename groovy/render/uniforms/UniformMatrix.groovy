import net.minecraft.client.renderer.OpenGlHelper

import java.nio.FloatBuffer
import java.util.function.Function

class UniformMatrix extends Uniform<Float> {

    private final Function<Float,FloatBuffer> bufferFunc;

    public UniformMatrix(String name, Function<Float,FloatBuffer> bufferFunc) {
        super(name);
        this.bufferFunc = bufferFunc;
    }

    @Override
    public void upload(float partialTicks, int programID) {
        setID(OpenGlHelper.glGetUniformLocation(programID,getName()));
        OpenGlHelper.glUniformMatrix2(getID(),false,this.bufferFunc.apply(partialTicks));
    }
}