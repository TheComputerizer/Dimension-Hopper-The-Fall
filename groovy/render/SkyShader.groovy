
import net.minecraft.client.Minecraft
import net.minecraft.client.multiplayer.WorldClient

import render.uniforms.UniformFloat

class SkyShader extends Shader {

    SkyShader() {
        super("sky/skytest.fsh","sky/skytest.vsh")
        addUniform(new UniformFloat("time",this::getTime))
        addUniform(new UniformFloat("timeScale",this::getTimeScale))
        addUniform(new UniformFloat("uvScale",this::getUVScale))
        addUniform(new UniformFloat("radius",this::getRadius))
        addUniform(new UniformFloat("outlineThickness",this::getOutlineThickness))
        addUniform(new UniformFloat("animationScale",this::getAnimationScale))
        addUniform(new UniformFloat("crackScale",this::getCrackScale))
    }

    float getTime(float partialTicks) {
        Minecraft mc = Minecraft.getMinecraft()
        return Objects.nonNull(mc.world) ? (mc.world.getWorldTime()%65536L)+partialTicks : 1f
    }

    float getTimeScale(float partialTicks) {
        return 1f/15f
    }

    float getUVScale(float partialTicks) {
        return 1/16f
    }

    float getRadius(float partialTicks) {
        return 0.11f
    }

    float getOutlineThickness(float partialTicks) {
        return 0.02f
    }

    float getAnimationScale(float partialTicks) {
        return 3f
    }

    float getCrackScale(float partialTicks) {
        return 0.1f*getUVScale(partialTicks)
    }

    @Override
    boolean canRender(WorldClient world) {
        return Objects.nonNull(world)
    }
}