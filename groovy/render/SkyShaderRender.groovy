import net.minecraft.client.Minecraft;
import net.minecraft.client.multiplayer.WorldClient;
import net.minecraft.client.renderer.BufferBuilder;
import net.minecraft.client.renderer.GlStateManager;
import net.minecraft.client.renderer.RenderHelper;
import net.minecraft.client.renderer.Tessellator;
import net.minecraft.util.ResourceLocation;
import net.minecraftforge.client.IRenderHandler;

import render.RenderShortcuts

import java.util.function.Consumer;

class SkyShaderRenderer extends IRenderHandler {

    static final ResourceLocation END_SKY_TEXTURES = new ResourceLocation("textures/environment/end_sky.png");
    static final int SHADER_SIDE = 3; //0 = bottom(-y), 1 = north(-z), 2 = south(+z), 3 = top(+y), 4 = east(x), 5 = west(-x)

    final Consumer<Float> shaderUser;
    final Consumer<Float> shaderReleaser;
    
    SkyShaderRenderer(Consumer<Float> shaderUser, Consumer<Float> shaderReleaser) {
        this.shaderUser = shaderUser;
        this.shaderReleaser = shaderReleaser;
    }
    
    @Override
    void render(float partialTicks, WorldClient world, Minecraft mc) {
        GlStateManager.disableFog();
        GlStateManager.disableAlpha();
        GlStateManager.enableBlend();
        RenderShortcuts.blendFuncFromMap("SA","1MSA","1","0");
        RenderHelper.disableStandardItemLighting();
        GlStateManager.depthMask(false);
        mc.getTextureManager().bindTexture(END_SKY_TEXTURES);
        Tessellator tessellator = Tessellator.getInstance();
        BufferBuilder buffer = tessellator.getBuffer();
        for(int side=0; side<6; side++) {
            if(side==SHADER_SIDE) this.shaderUser.accept(partialTicks);
            GlStateManager.pushMatrix();
            if(side==1) GlStateManager.rotate(90f,1f,0f,0f);
            else if(side==2) GlStateManager.rotate(-90f,1f,0f,0f);
            else if(side==3) GlStateManager.rotate(180f,1f,0f,0f);
            else if(side==4) GlStateManager.rotate(90f,0f,0f,1f);
            else if(side==5) GlStateManager.rotate(-90f,0f,0f,1f);
            RenderShortcuts.bufferSkyQuad(tessellator,buffer,0.2f,0.2f,0.2f,1f);
            GlStateManager.popMatrix();
            if(side==SHADER_SIDE) this.shaderReleaser.accept(partialTicks);
        }
        GlStateManager.depthMask(true);
        GlStateManager.enableTexture2D();
        GlStateManager.enableAlpha();
    }
}