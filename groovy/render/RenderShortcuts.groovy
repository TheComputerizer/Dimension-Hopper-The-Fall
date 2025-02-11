import it.unimi.dsi.fastutil.objects.Object2IntOpenHashMap;
import net.minecraft.client.renderer.BufferBuilder;
import net.minecraft.client.renderer.GlStateManager;
import net.minecraft.client.renderer.GlStateManager.DestFactor;
import net.minecraft.client.renderer.GlStateManager.SourceFactor;
import net.minecraft.client.renderer.Tessellator;
import net.minecraft.client.renderer.vertex.DefaultVertexFormats;
import org.lwjgl.opengl.GL11;

import java.util.Map;

class RenderShortcuts {

    static final Map<String,Integer> DEST_FACTOR_MAP = defineDestFactors();
    static final Map<String,Integer> SOURCE_FACTOR_MAP = defineSourceFactors();

    static void blendFuncFromMap(String src, String dst, String srcAlpha, String dstAlpha) {
        GlStateManager.tryBlendFuncSeparate(getSrc(src),getDst(dst),getSrcAlpha(srcAlpha),getDstAlpha(dstAlpha));
    }

    static void bufferSkyQuad(Tessellator tessellator, BufferBuilder buffer, float r, float g, float b, float a) {
        buffer.begin(GL11.GL_QUADS,DefaultVertexFormats.POSITION_TEX_COLOR);
        bufferWhiteVertex(buffer,-100d,-100d,-100d,0d,0d,r,g,b,a);
        bufferWhiteVertex(buffer,-100d,-100d,100d,0d,16d,r,g,b,a);
        bufferWhiteVertex(buffer,100d,-100d,100d,16d,16d,r,g,b,a);
        bufferWhiteVertex(buffer,100d,-100d,-100d,16d,0d,r,g,b,a);
        tessellator.draw();
    }

    static void bufferWhiteVertex(BufferBuilder buffer, double x, double y, double z, double u, double v,
                                         float r, float g, float b, float a) {
        buffer.pos(x,y,z).tex(u,v).color(r,g,b,a).endVertex();
    }

    static Map<String,Integer> defineDestFactors() {
        Map<String,Integer> map = new Object2IntOpenHashMap<>();
        map.put("0",    SourceFactor.ZERO.factor);
        map.put("1",    SourceFactor.ONE.factor);
        map.put("1MCA", SourceFactor.ONE_MINUS_CONSTANT_ALPHA.factor);
        map.put("1MCC", SourceFactor.ONE_MINUS_CONSTANT_COLOR.factor);
        map.put("1MDA", SourceFactor.ONE_MINUS_DST_ALPHA.factor);
        map.put("1MDC", SourceFactor.ONE_MINUS_DST_COLOR.factor);
        map.put("1MSA", SourceFactor.ONE_MINUS_SRC_ALPHA.factor);
        map.put("1MSC", SourceFactor.ONE_MINUS_SRC_COLOR.factor);
        map.put("CA",   SourceFactor.CONSTANT_ALPHA.factor);
        map.put("CC",   SourceFactor.CONSTANT_COLOR.factor);
        map.put("DC",   SourceFactor.DST_ALPHA.factor);
        map.put("DS",   SourceFactor.DST_COLOR.factor);
        map.put("SA",   SourceFactor.SRC_ALPHA.factor);
        map.put("SAS",  SourceFactor.SRC_ALPHA_SATURATE.factor);
        map.put("SC",   SourceFactor.SRC_COLOR.factor);
        return map;
    }

    static Map<String,Integer> defineSourceFactors() {
        Map<String,Integer> map = new Object2IntOpenHashMap<>();
        map.put("0",    DestFactor.ZERO.factor);
        map.put("1",    DestFactor.ONE.factor);
        map.put("1MCA", DestFactor.ONE_MINUS_CONSTANT_ALPHA.factor);
        map.put("1MCC", DestFactor.ONE_MINUS_CONSTANT_COLOR.factor);
        map.put("1MDA", DestFactor.ONE_MINUS_DST_ALPHA.factor);
        map.put("1MDC", DestFactor.ONE_MINUS_DST_COLOR.factor);
        map.put("1MSA", DestFactor.ONE_MINUS_SRC_ALPHA.factor);
        map.put("1MSC", DestFactor.ONE_MINUS_SRC_COLOR.factor);
        map.put("CA",   DestFactor.CONSTANT_ALPHA.factor);
        map.put("CC",   DestFactor.CONSTANT_COLOR.factor);
        map.put("DC",   DestFactor.DST_ALPHA.factor);
        map.put("DS",   DestFactor.DST_COLOR.factor);
        map.put("SA",   DestFactor.SRC_ALPHA.factor);
        map.put("SC",   DestFactor.SRC_COLOR.factor);
        return map;
    }

    static int getDst(String name) {
        return DEST_FACTOR_MAP.getOrDefault(name,DestFactor.ONE_MINUS_SRC_ALPHA.factor);
    }

    static int getDstAlpha(String name) {
        return DEST_FACTOR_MAP.getOrDefault(name,DestFactor.ZERO.factor);
    }

    static int getSrc(String name) {
        return SOURCE_FACTOR_MAP.getOrDefault(name,SourceFactor.SRC_ALPHA.factor);
    }

    static int getSrcAlpha(String name) {
        return SOURCE_FACTOR_MAP.getOrDefault(name,SourceFactor.ONE.factor);
    }
}