import java.util.function.Function

class UniformFloat extends Uniform<Float> {

    final Function<Float,Float> valFunc;

    UniformFloat(String name, Function<Float,Float> valFunc) {
        super(name);
        this.valFunc = valFunc;
    }

    @Override
    void upload(float partialTicks, int programID) {
        ShaderManager.getInstance().uploadFloat(programID,getName(),this.valFunc.apply(partialTicks));
    }
}